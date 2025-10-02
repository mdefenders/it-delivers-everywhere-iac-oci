provider "helm" {
  kubernetes = {
    host                   = yamldecode(module.cicd.kubeconfig_content)["clusters"][var.kubeconfig_index]["cluster"]["server"]
    token                  = module.cicd.oke_token
    cluster_ca_certificate = base64decode(yamldecode(module.cicd.kubeconfig_content)["clusters"][var.kubeconfig_index]["cluster"]["certificate-authority-data"])
  }
}