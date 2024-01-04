terraform {

  required_providers {

    hcp = {
      source  = "hashicorp/hcp"
      version = ">=0.77.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = ">=0.51.0"
    }

  }
}

provider "hcp" {
  project_id = var.hpl_hcp_project_id
}

provider "tfe" {}

data "tfe_organization" "org_name" {
  name = var.hpl_tfc_organisation_name
}


resource "hcp_boundary_cluster" "partner_labs_boundary" {
  cluster_id = "partner-boundary-cluster"
  username   = var.boundary_admin_username
  password   = var.boundary_admin_password
  tier       = "Plus"
  maintenance_window_config {
    day          = "SUNDAY"
    start        = 2
    end          = 12
    upgrade_type = "SCHEDULED"
  }
}

resource "tfe_variable_set" "boundary_vs" {
  name         = "Boundary Variables"
  description  = "Boundary Variables"
  organization = data.tfe_organization.org_name.name
  global       = true
  depends_on   = [hcp_boundary_cluster.partner_labs_boundary]
}


resource "tfe_variable" "boundary_addr" {
  key             = "BOUNDARY_ADDR"
  value           = hcp_boundary_cluster.partner_labs_boundary.cluster_url
  description     = "Boundary URL"
  variable_set_id = tfe_variable_set.boundary_vs.id
  category        = "env"
}