resource "github_actions_secret" "this" {
  for_each        = var.secrets
  repository      = each.value.repository
  secret_name     = each.key
  plaintext_value = each.value.plaintext_value
  encrypted_value = each.value.encrypted_value
}
