variable "key_name" {
  description = "SSH key name"
  type        = string
}

variable "ssh_public_key_path" {
  description = "Path to SSH public key directory"
  type        = string
}

variable "ssh_key_algorithm" {
  description = "SSH key algorithm"
  type        = string
  default     = "RSA"
}

variable "private_key_extension" {
  description = "Private key extension"
  type        = string
  default     = ".pem"
}

variable "public_key_extension" {
  description = "Public key extension"
  type        = string
  default     = ".pub"
}

variable "private_key_output_enabled" {
  description = "Add the private key as a terraform output private_key"
  type        = bool
  default     = true
}
