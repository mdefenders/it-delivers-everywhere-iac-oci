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
variable "key_shape" {
    description = "The shape of the Key"
    type        = string
    default     = "AES"
}
variable "key_length" {
    description = "The length of the Key"
    type        = number
    default     = 32
}