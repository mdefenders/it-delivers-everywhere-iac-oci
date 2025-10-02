terraform {
  required_version = ">= 1.12.2, < 1.13.0"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "7.4.0"
    }
  }
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid    = var.user_ocid
  fingerprint  = var.fingerprint
  private_key  = var.private_key
  region       = var.region
}