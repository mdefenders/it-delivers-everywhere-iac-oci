terraform {
  backend "oci" {
    bucket               = "adt-terraform-state-buckets"
    namespace            = "ax4chigfdisp"
    key                  = "itde/oci/dev/cicd/terraform.tfstate"
    workspace_key_prefix = "itde/oci/dev/cicd"
  }
}
