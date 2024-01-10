variable "boundary_admin_username" {
  type        = string
  description = "Boundary Admin UI Login Name"
  default     = "admin"
}

variable "boundary_admin_password" {
  type        = string
  description = "Boundary Admin UI Password"
  sensitive = true

}

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