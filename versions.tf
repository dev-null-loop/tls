terraform {
  required_providers {
    tls = {
      source  = "hashicorp/tls"
      version = ">= 2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 1.3"
    }
  }
  required_version = ">= 1.5.7"
}
