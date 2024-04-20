variable "secrets" {
  description = <<EOF
  (선택) Repo 에 secret variable 값에 넣을 값 `secrets` 블록 내용.
    (선택) `plaintext_value` - 변수의 일반 텍스트 값.
    (선택) `encrypted_value` - Base64 형식의 Github 공개 키를 사용하여 암호화된 비밀값.
  EOF

  type    = any
  default = {}
}

variable "repository" {
  description = "(필수) 변수를 지정할 repository"
  type        = string
  nullable    = false
}
