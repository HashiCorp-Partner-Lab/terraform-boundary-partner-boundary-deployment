<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_hcp"></a> [hcp](#requirement\_hcp) | >=0.77.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >=0.51.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcp"></a> [hcp](#provider\_hcp) | 0.78.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.51.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcp_boundary_cluster.partner_labs_boundary](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/resources/boundary_cluster) | resource |
| [tfe_variable.boundary_addr](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.boundary_admin_password](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.boundary_admin_username](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.boundary_vs](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_organization.org_name](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_boundary_admin_password"></a> [boundary\_admin\_password](#input\_boundary\_admin\_password) | Boundary Admin UI Password | `string` | n/a | yes |
| <a name="input_boundary_admin_username"></a> [boundary\_admin\_username](#input\_boundary\_admin\_username) | Boundary Admin UI Login Name | `string` | `"admin"` | no |
| <a name="input_hpl_hcp_project_id"></a> [hpl\_hcp\_project\_id](#input\_hpl\_hcp\_project\_id) | Partner HCP Project ID | `string` | `"ProjectID"` | no |
| <a name="input_hpl_tfc_organisation_name"></a> [hpl\_tfc\_organisation\_name](#input\_hpl\_tfc\_organisation\_name) | TFC Org Name | `string` | `"TFC Org"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_boundary_cluster_url"></a> [boundary\_cluster\_url](#output\_boundary\_cluster\_url) | n/a |
<!-- END_TF_DOCS -->