output "vault_ocid" {
  value = module.k8s-vault.vault_ocid
}
output "itde_key_ocid" {
  value = oci_kms_key.itde_key.id
}
