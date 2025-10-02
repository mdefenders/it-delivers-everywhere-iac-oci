# Outputs for k8s cluster

output "cluster-name" {
  value = module.oci-k8s.cluster-name
}
output "cluster-OCID" {
  value = module.oci-k8s.cluster-OCID
}
output "cluster-kubernetes-version" {
  value = module.oci-k8s.cluster-kubernetes-version
}
output "cluster-state" {
  value = module.oci-k8s.cluster-state
}

# Outputs for k8s node pool
output "node-pool-name" {
  value = module.oci-k8s.node-pool-name
}
output "node-pool-OCID" {
  value = module.oci-k8s.node-pool-OCID
}
output "node-pool-kubernetes-version" {
  value = module.oci-k8s.node-pool-kubernetes-version
}
output "node-size" {
  value = module.oci-k8s.node-size
}
output "node-shape" {
  value = module.oci-k8s.node-shape
}
