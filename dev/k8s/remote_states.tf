data "terraform_remote_state" "infra" {
  backend = "oci"

  config = {
    bucket               = "adt-terraform-state-buckets"
    namespace            = "ax4chigfdisp"
    key                  = "itde/oci/dev/infra/terraform.tfstate"
    workspace_key_prefix = "itde/oci/dev/infra"
  }
}
