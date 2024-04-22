module "repo" {
  source      = "../../modules/repository"
  name        = "terraform-test"
  description = ""

  is_template = false

  visibility = "public"

  template = {
    init_readme = true
    gitignore   = "Terraform"
    license     = "Apache-2.0"
  }
}
