<!-- BEGIN_TF_DOCS -->
# User module

This module represents the user entity. GitHub's users cannot be created
programmatically from Terraform and currently there is no integration with IDP
service, this module just ensures that the existing GitHub user receives the
invitation to the GitHub organization

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_membership.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Github user | `string` | n/a | yes |
| <a name="input_role"></a> [role](#input\_role) | Organization role | `string` | `"member"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->