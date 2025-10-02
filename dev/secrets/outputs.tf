output "vault_ocid" {
  value = oci_kms_vault.itde_vault.id
}
output "itde_key_ocid" {
  value = oci_kms_key.itde_key.id
}
