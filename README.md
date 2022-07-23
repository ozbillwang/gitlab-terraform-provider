## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.16.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [gitlab_project.repository](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project) | resource |
| [gitlab_project_environment.environment](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_environment) | resource |
| [gitlab_project_variable.all_variables](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_variable) | resource |
| [gitlab_project_variable.masked_production_variables](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_variable) | resource |
| [gitlab_project_variable.masked_staging_variables](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_variable) | resource |
| [gitlab_project_variable.production_variables](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_variable) | resource |
| [gitlab_project_variable.staging_variables](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/resources/project_variable) | resource |
| [gitlab_group.group](https://registry.terraform.io/providers/gitlabhq/gitlab/3.16.1/docs/data-sources/group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_all_variables"></a> [all\_variables](#input\_all\_variables) | set variables for environment "all" | `map(any)` | <pre>{<br>  "region": "us-west-2"<br>}</pre> | no |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | n/a | `any` | n/a | yes |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | gitlab group name. | `string` | `"example-group"` | no |
| <a name="input_masked_production_variables"></a> [masked\_production\_variables](#input\_masked\_production\_variables) | n/a | `map(any)` | <pre>{<br>  "password": "cHJvZHVjdGlvbgo="<br>}</pre> | no |
| <a name="input_masked_staging_variables"></a> [masked\_staging\_variables](#input\_masked\_staging\_variables) | You should not manage credentials in this repo, I put here only for reference | `map(any)` | <pre>{<br>  "password": "c3RhZ2luZwo="<br>}</pre> | no |
| <a name="input_production_variables"></a> [production\_variables](#input\_production\_variables) | set variables for environment "production" | `map(any)` | <pre>{<br>  "environment": "production",<br>  "username": "example_user"<br>}</pre> | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | repository name | `string` | `"example"` | no |
| <a name="input_staging_variables"></a> [staging\_variables](#input\_staging\_variables) | set variables for environment "staging" | `map(any)` | <pre>{<br>  "environment": "staging",<br>  "username": "example_user"<br>}</pre> | no |

## Outputs

No outputs.

## usage

1) make sure you get the PAT (personal access token) from your gitlab account
```
$ export TF_VAR_gitlab_token="<your_PAT>"
```

2) update variables in `variables.tf`

3) apply the change

```
$ terraform init

$ terraform plan

$ terraform apply
```

## update README

use [terraform-docs](https://terraform-docs.io/) to generate terraform readme file easily.
```
docker run --rm --volume "$(pwd):/terraform-docs" -u $(id -u) quay.io/terraform-docs/terraform-docs:0.16.0 markdown /terraform-docs | tee README.md
```
