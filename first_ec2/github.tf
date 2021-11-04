terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.17.0"
    }
  }
}

provider "github" {
  token = ""
}

# resource "github_repository" "example" {
#   name       = "terraform-repo"
#   visibility = "private"
# }
