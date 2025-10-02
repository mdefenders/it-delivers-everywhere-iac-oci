variable "mysql_db_system_availability_domain" {
  description = "MySQL db system availability domain"
  type        = string
}
variable "mysql_db_system_customer_contacts_email" {
  description = "Email for customer contacts"
  type        = string
}
variable "tenancy_ocid" {
  description = "The OCID of the tenancy"
  type        = string
  sensitive   = true
}
variable "user_ocid" {
  description = "The OCID of the user"
  type        = string
  sensitive   = true
}
variable "fingerprint" {
  description = "The fingerprint of the user's API key"
  type        = string
  sensitive   = true
}
variable "private_key" {
  description = "The path to the private key file"
  type        = string
}
variable "region" {
  description = "The region to deploy resources in"
  type        = string
}