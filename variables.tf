# variable "boundary_org_name" {
#   type        = string
#   description = "Name of the Org Scope"
# }

# variable "boundary_project_name" {
#   type        = string
#   description = "Name of the Project Scope"
# }

# variable "boundary_addr" {
#   type        = string
#   description = "Boundary URL"
# }

variable "boundary_admin_username" {
  type        = string
  description = "Boundary Admin UI Login Name"
  default     = "admin"
}

variable "boundary_admin_password" {
  type        = string
  description = "Boundary Admin UI Password"

}

# variable "partner_login_name" {
#   type        = string
#   description = "Login Name for Partner to use"
# }

# variable "partner_password" {
#   type        = string
#   description = "Password for Partner to auth"
# }

variable "hpl_tfc_organisation_name" {
  type        = string
  description = "TFC Org Name"
  default     = "TFC Org"
}

variable "hpl_hcp_project_id" {
  type        = string
  description = "Partner HCP Project ID"
  default     = "ProjectID"
}