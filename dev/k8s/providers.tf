provider "helm" {
  kubernetes = {
    host                   = yamldecode(module.oci-k8s.kubeconfig_content)["clusters"][var.kubeconfig_index]["cluster"]["server"]
    token                  = module.oci-k8s.oke_token
    cluster_ca_certificate = base64decode(yamldecode(module.oci-k8s.kubeconfig_content)["clusters"][var.kubeconfig_index]["cluster"]["certificate-authority-data"])
  }
}