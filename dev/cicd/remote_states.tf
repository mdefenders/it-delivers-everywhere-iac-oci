data "terraform_remote_state" "k8s" {
  backend = "oci"

  config = {
    bucket               = "adt-terraform-state-buckets"
    namespace            = "ax4chigfdisp"
    key                  = "itde/oci/dev/k8s/terraform.tfstate"
    workspace_key_prefix = "itde/oci/dev/k8s"
  }
}
data "terraform_remote_state" "infra" {
  backend = "oci"

  config = {
    bucket               = "adt-terraform-state-buckets"
    namespace            = "ax4chigfdisp"
    key                  = "itde/oci/dev/infra/terraform.tfstate"
    workspace_key_prefix = "itde/oci/dev/infra"
  }
}