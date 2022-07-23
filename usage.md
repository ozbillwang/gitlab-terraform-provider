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
