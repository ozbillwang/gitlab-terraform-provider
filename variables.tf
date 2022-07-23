# repository name
variable "repo_name" {
  default = "example"
}

# gitlab group name.
variable "group_name" {
  default = "example-group"
}

# set variables for environment "staging"
variable "staging_variables" {
  type = map(any)

  default = {
    environment = "staging"
    username    = "example_user"
  }
}

# set variables for environment "production"
variable "production_variables" {
  type = map(any)

  default = {
    environment = "production"
    username    = "example_user"
  }

}

# set variables for environment "all"
variable "all_variables" {
  type = map(any)

  default = {
    region = "us-west-2"
  }

}

# You should not manage credentials in this repo, I put here only for reference
variable "masked_staging_variables" {
  type = map(any)

  default = {
    password = "c3RhZ2luZwo="
  }
}

variable "masked_production_variables" {
  type = map(any)

  default = {
    password = "cHJvZHVjdGlvbgo="
  }
}
