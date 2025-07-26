output "public_key_filename" {
  description = "public SSH key filename"
  value       = local.public_key_filename
}

output "private_key_filename" {
  description = "private SSH key filename"
  value       = local.private_key_filename
}

output "public_key" {
  description = "Content of the generated public key"
  value       = [for key in tls_private_key.this[*].public_key_openssh : trimspace(key)][0]
}

output "private_key" {
  description = "Content of the generated private key"
  value       = var.private_key_output_enabled ? tls_private_key.this.private_key_pem : null
  sensitive   = true
}
