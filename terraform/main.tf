provider "vault" {
  address = "http://localhost:8200"
}

resource "vault_generic_secret" "to_write" {
  path = "secret/terraform_to_write"

  data_json = <<EOT
{
  "foo":   "bar",
  "pizza": "cheese"
}
EOT
}

data "vault_generic_secret" "to_read" {
  path = "secret/terraform_to_read"
}

output "terraform_read" {
  value = data.vault_generic_secret.to_read.data
  sensitive = true
}