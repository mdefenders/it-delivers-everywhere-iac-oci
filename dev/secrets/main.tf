resource "oci_kms_vault" "itde_vault" {
  compartment_id = data.terraform_remote_state.infra.outputs.tenancy_ocid
  display_name   = var.vault_name
  vault_type     = "DEFAULT"
}

resource "oci_kms_key" "itde_key" {
  compartment_id      = data.terraform_remote_state.infra.outputs.tenancy_ocid
  display_name        = var.key_name
  management_endpoint = oci_kms_vault.itde_vault.management_endpoint
  key_shape {
    algorithm = "AES"
    length    = 32
  }
}

resource "oci_identity_dynamic_group" "oke_nodes_dynamic_group" {
  compartment_id = data.terraform_remote_state.infra.outputs.tenancy_ocid
  name           = var.dynamic_group_name
  description    = "Dynamic group for OKE worker nodes to access Vault secrets"
  matching_rule  = "ALL {instance.compartment.id = '${data.terraform_remote_state.k8s.outputs.cluster-OCID}'}"
}

resource "oci_identity_policy" "oke_instance_policy" {
  compartment_id = data.terraform_remote_state.infra.outputs.tenancy_ocid
  name           = "OKE-InstancePrincipal-ReadVault"
  description    = "Allow OKE nodes to read secrets from Vault"
  statements     = [
    "Allow dynamic-group 'Default'/'${var.dynamic_group_name}' to use secret-family in tenancy"
  ]
}
