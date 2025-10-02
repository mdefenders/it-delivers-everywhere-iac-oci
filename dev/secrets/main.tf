module "k8s-vault" {
  source         = "git::https://github.com/mdefenders/terraform-oci-k8s-vault.git?ref=v1.0.0"
  compartment_id = data.terraform_remote_state.infra.outputs.tenancy_ocid
  vault_name     = var.vault_name
  cluster_ocid   = data.terraform_remote_state.k8s.outputs.cluster-OCID
}

resource "oci_kms_key" "itde_key" {
  compartment_id      = data.terraform_remote_state.infra.outputs.tenancy_ocid
  display_name        = var.key_name
  management_endpoint = module.k8s-vault.management_endpoint
  key_shape {
    algorithm = var.key_shape
    length    = var.key_length
  }
}
