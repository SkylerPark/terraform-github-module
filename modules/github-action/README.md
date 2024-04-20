# github_action

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 5.8 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 5.8 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository"></a> [repository](#input\_repository) | (필수) 변수를 지정할 repository | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | (선택) Repo 에 secret variable 값에 넣을 값 `secrets` 블록 내용.<br>    (선택) `plaintext_value` - 변수의 일반 텍스트 값.<br>    (선택) `encrypted_value` - Base64 형식의 Github 공개 키를 사용하여 암호화된 비밀값. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository"></a> [repository](#output\_repository) | Secret 변수가 지정된 repository |
| <a name="output_secrets"></a> [secrets](#output\_secrets) | secret 변수 내용 리스트 |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
