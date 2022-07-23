data "gitlab_group" "group" {
  full_path = var.group_name
}

# Add a project to the group - example/example
resource "gitlab_project" "repository" {
  name         = var.repo_name
  namespace_id = data.gitlab_group.group.id
}

resource "gitlab_project_environment" "environment" {
  for_each            = toset(["staging", "produciton", "non-production"])
  project             = gitlab_project.repository.id
  name                = each.key
  external_url        = "http://www.${each.key}.com"
  stop_before_destroy = true
}

# Add variables to the project
resource "gitlab_project_variable" "staging_variables" {
  for_each          = var.staging_variables
  project           = gitlab_project.repository.id
  key               = each.key
  value             = each.value
  environment_scope = "staging"
  protected         = false
  masked            = false
}

resource "gitlab_project_variable" "production_variables" {
  for_each          = var.production_variables
  project           = gitlab_project.repository.id
  key               = each.key
  value             = each.value
  environment_scope = "production"
  protected         = false
  masked            = false
}

# Add masked variables to the project
resource "gitlab_project_variable" "masked_staging_variables" {
  for_each          = var.masked_staging_variables
  project           = gitlab_project.repository.id
  key               = each.key
  value             = each.value
  environment_scope = "staging"
  protected         = false
  masked            = true
}

resource "gitlab_project_variable" "masked_production_variables" {
  for_each          = var.masked_production_variables
  project           = gitlab_project.repository.id
  key               = each.key
  value             = each.value
  environment_scope = "production"
  protected         = false
  masked            = true
}
