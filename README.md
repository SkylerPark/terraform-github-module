# terraform-github-module

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white&style=flat-square)](https://github.com/pre-commit/pre-commit)
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Component

아래 도구를 이용하여 모듈작성을 하였습니다. 링크를 참고하여 OS 에 맞게 설치 합니다.

> **macos** : ./bin/install-macos.sh

- [pre-commit](https://pre-commit.com)
- [terraform](https://terraform.io)
- [tfenv](https://github.com/tfutils/tfenv)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [tfsec](https://github.com/tfsec/tfsec)
- [tflint](https://github.com/terraform-linters/tflint)

## Services

해당 Terraform 모듈을 사용하여 아래 서비스를 관리 합니다.

- **GitHub**
  - repository
  - github-action(secret)

## Usage

아래 예시를 활용하여 작성가능하며 examples 코드를 참고 부탁드립니다.

### Simple Repo

Repository 를 생성 합니다..

```hcl
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

```

### Repository with secret

Repository 를 생성 하며 secret 변수를 생성 하는 예시 입니다.

```hcl
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

```
