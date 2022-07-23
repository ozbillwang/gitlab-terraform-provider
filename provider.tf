terraform {

  #backend "azurerm" {}

  # define providers
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "3.16.1"
    }
  }
}

variable "gitlab_token" {}

# Configure the GitLab Provider
provider "gitlab" {
  token = var.gitlab_token
}

