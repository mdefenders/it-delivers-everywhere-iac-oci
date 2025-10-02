# Outputs for the vcn module

output "vcn_id" {
  description = "OCID of the VCN that is created"
  value       = module.vcn.vcn_id
}
output "id-for-route-table-that-includes-the-internet-gateway" {
  description = "OCID of the internet-route table. This route table has an internet gateway to be used for public subnets"
  value       = module.vcn.ig_route_id
}
output "nat-gateway-id" {
  description = "OCID for NAT gateway"
  value       = module.vcn.nat_gateway_id
}
output "id-for-for-route-table-that-includes-the-nat-gateway" {
  description = "OCID of the nat-route table - This route table has a nat gateway to be used for private subnets. This route table also has a service gateway."
  value       = module.vcn.nat_route_id
}

data "oci_identity_availability_domains" "ads" {
  compartment_id = var.tenancy_ocid
}

output "all-availability-domains-in-your-tenancy" {
  value = data.oci_identity_availability_domains.ads.availability_domains
}
output "tenancy_ocid" {
  value = var.tenancy_ocid
}
output "compartment-name" {
  value = module.oci-infra.compartment-name
}

output "compartment-OCID" {
  value = module.oci-infra.compartment-OCID
}

output "private-security-list-name" {
  value = module.oci-infra.private-security-list-name
}
output "private-security-list-OCID" {
  value = module.oci-infra.private-security-list-OCID
}

output "public-security-list-name" {
  value = module.oci-infra.public-security-list-name
}
output "public-security-list-OCID" {
  value = module.oci-infra.public-security-list-OCID
}

output "private-subnet-name" {
  value = module.oci-infra.private-subnet-name
}
output "private-subnet-OCID" {
  value = module.oci-infra.private-subnet-OCID
}

# Outputs for public subnet

output "public-subnet-name" {
  value = module.oci-infra.public-subnet-name
}
output "public-subnet-OCID" {
  value = module.oci-infra.public-subnet-OCID
}

output "region" {
  value = var.region
}