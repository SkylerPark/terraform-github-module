output "repository" {
  description = "Secret 변수가 지정된 repository"
  value       = var.repository
}

output "secrets" {
  description = "secret 변수 내용 리스트"
  value = {
    for k, v in var.secrets : github_actions_secret.this[k].secret_name => {
      plaintext_value = try(v.plaintext_value, "")
      encrypted_value = try(v.encrypted_value, "")
    }
  }
}
