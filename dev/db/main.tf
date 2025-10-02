module "mysql" {
  source                                  = "git::https://github.com/mdefenders/terraform-oci-mysql.git?ref=v1.0.0"
  mysql_db_system_availability_domain     = var.mysql_db_system_availability_domain
  compartment_id                          = data.terraform_remote_state.infra.outputs.tenancy_ocid
  subnet_id                               = data.terraform_remote_state.infra.outputs.private-subnet-OCID
  mysql_db_system_customer_contacts_email = var.mysql_db_system_customer_contacts_email
  vault_id                                = data.terraform_remote_state.secrets.outputs.vault_ocid
  rootpassword_secret_id                  = data.terraform_remote_state.secrets.outputs.itde_key_ocid
}