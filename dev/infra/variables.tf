variable "tenancy_ocid" {
  description = "The OCID of the tenancy"
  type        = string
}
variable "user_ocid" {
  description = "The OCID of the user"
  type        = string
}
variable "fingerprint" {
  description = "The fingerprint of the user's API key"
  type        = string
}
variable "private_key_path" {
  description = "The path to the private key file"
  type        = string
}
variable "region" {
  description = "The region to deploy resources in"
  type        = string
}
variable "vcn_display_name" {
  description = "The display name for the VCN"
  type        = string
}

variable "private_cidr_block" {
  description = "Private Sunbet CIDR"
  type        = string
}

variable "public_cidr_block" {
  description = "Public Sunbet CIDR"
  type        = string
}