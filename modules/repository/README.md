<!-- BEGIN_TF_DOCS -->
# Repository Module

Defines the logical representation of the GitHub repository. It creates the
association of the repository with the teams and the associated permissions for
each of those teams

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
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_team_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/team_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_merge_commit"></a> [allow\_merge\_commit](#input\_allow\_merge\_commit) | Whether or not we allow merge commit | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Repository description | `string` | n/a | yes |
| <a name="input_has_discussions"></a> [has\_discussions](#input\_has\_discussions) | Whether the repository has enabled the discussions feature | `bool` | `true` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | Whether the repository has enabled the issues feature | `bool` | `true` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | Whether the repository has enabled the projects feature | `bool` | `true` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | Whether the repository has enabled the wiki feature | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Repository name | `string` | n/a | yes |
| <a name="input_teams"></a> [teams](#input\_teams) | Associates and grants teams specific permissions on the repository | <pre>list(object({<br>    name       = string<br>    permission = string<br>  }))</pre> | `[]` | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | Repository Visibility | `string` | `"private"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->