provider "github" {}

module "terraform-template" {
  source      = "../../modules/repository"
  name        = "terraform-template"
  description = ""

  is_template = true

  visibility = "private"

  template = {
    init_readme = true
    gitignore   = "Terraform"
    license     = "Apache-2.0"
  }
}
