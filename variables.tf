variable "repo_name" {
  default = "example"
}

variable "group_name" {
  default = "example-group"
}

variable "staging_variables" {
  type = map(any)

  default = {
    environment = "staging"
    username    = "example_user"
  }
}

variable "production_variables" {
  type = map(any)

  default = {
    environment = "production"
    username    = "example_user"
  }

}

# You should not manage credentials in this repo, I put here only for reference
variable "masked_staging_variables" {
  type = map(any)

  default = {
    password = "c3RhZ2luZwo="
  }
}

variable "masked_staging_variables" {
  type = map(any)

  default = {
    password = "cHJvZHVjdGlvbgo="
  }
}
