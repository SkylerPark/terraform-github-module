module "repo" {
  source      = "../../modules/repository"
  name        = "terraform-test"
  description = ""

  is_template = true

  visibility = "private"

  template = {
    init_readme = true
    gitignore   = "Terraform"
    license     = "Apache-2.0"
  }
}

module "secrets" {
  source     = "../../modules/github-action"
  repository = module.repo.id
  secrets = {
    "test" = {
      plaintext_value = "test"
    }
  }
  depends_on = [module.repo]
}
