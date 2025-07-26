locals {
  public_key_filename  = "${var.ssh_public_key_path}/${var.key_name}${var.public_key_extension}"
  private_key_filename = "${var.ssh_public_key_path}/${var.key_name}${var.private_key_extension}"
}

resource "tls_private_key" "this" {
  algorithm = var.ssh_key_algorithm
}

resource "local_file" "public_key_openssh" {
  depends_on      = [tls_private_key.this]
  content         = tls_private_key.this.public_key_openssh
  filename        = local.public_key_filename
  file_permission = "0600"
}

resource "local_file" "private_key_pem" {
  depends_on      = [tls_private_key.this]
  content         = tls_private_key.this.private_key_pem
  filename        = local.private_key_filename
  file_permission = "0600"
}

# resource "tls_self_signed_cert" "example" {
#   private_key_pem = file("private_key.pem")
#   subject {
#     common_name  = "example.com"
#     organization = "ACME Examples, Inc"
#   }
#   validity_period_hours = 12
#   allowed_uses = [
#     "key_encipherment",
#     "digital_signature",
#     "server_auth",
#   ]
# }
