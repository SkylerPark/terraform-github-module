resource "github_actions_secret" "this" {
  for_each        = var.secrets
  repository      = var.repository
  secret_name     = each.key
  plaintext_value = try(each.value.plaintext_value, null)
  encrypted_value = try(each.value.encrypted_value, null)
}
