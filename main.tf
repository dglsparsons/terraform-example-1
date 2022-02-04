terraform {
  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.1"
    }
  }
}

resource "vercel_project" "with_git" {
  name           = "terraform-demo-with-git"

  git_repository = {
    type = "github"
    repo = "dglsparsons/terraform-example-1"
  }
}
