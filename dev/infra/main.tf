module "oci-infra" {
  source             = "git::https://github.com/mdefenders/terraform-oci-infra.git?ref=v1.0.1"
  tenancy_ocid       = var.tenancy_ocid
  private_cidr_block = var.private_cidr_block
  public_cidr_block  = var.public_cidr_block
  vcn_id             = module.vcn.vcn_id
  vcn_ig_route_id    = module.vcn.ig_route_id
  vcn_nat_route_id   = module.vcn.nat_route_id
}

module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.6.0"

  # Required Inputs
  compartment_id = var.tenancy_ocid

  # Optional Inputs
  region = var.region

  # Changing the following default values
  vcn_name                = var.vcn_display_name
  create_internet_gateway = true
  create_nat_gateway      = true
  create_service_gateway  = true
}
