variable "dynamic_group_name" {
    description = "The name of the dynamic group for OKE nodes"
    type        = string
    default     = "OKE-Nodes-DynamicGroup"
}

variable "vault_name" {
    description = "The name of the Vault to create"
    type        = string
}
variable "key_name" {
    description = "The name of the Key to create"
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