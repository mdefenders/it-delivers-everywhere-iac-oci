variable "kubernetes_version" {
    description = "The version of Kubernetes to use for the cluster."
    type        = string
}
variable "cluster_name" {
    description = "The name of the Kubernetes cluster."
    type        = string
}
variable "enable_dashboard" {
    description = "Whether to enable the Kubernetes dashboard add-on."
    type        = bool
}
variable "kubernetes_pod_cidr" {
    description = "The CIDR block to use for pod IP addresses."
    type        = string
}
variable "kubernetes_service_cidr" {
    description = "The CIDR block to use for service IP addresses."
    type        = string
}
variable "node_pool_name" {
  description = "Kubernetes Node Pool name"
  type        = string
}
variable "node_pool_size" {
  description = "Kubernetes Node Pool size"
  type        = number
  default     = 3
}

variable "node_shape" {
  description = "Kubernetes Nodes Shape"
  type        = string
  default     = "VM.Standard2.1"
}
variable "node_image_ocid" {
  description = "Kubernetes Node Image OCID"
  type        = string
}
variable "kubeconfig_index" {
    description = "Index to use for the kubeconfig file"
    type        = number
    default     = 0
}
variable "csi_driver_chart_version" {
  description = "CSI Driver Chat Version"
  type        = string
}
variable "csi_chart_version" {
  description = "CSI Chat Version"
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