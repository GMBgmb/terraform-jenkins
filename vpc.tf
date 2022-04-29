
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "java_vpc" {
  # The CIDR block for the VPC.
  cidr_block = "${var.vpc_cidr}"

  # Makes your instances shared on the host.
  instance_tenancy = "${var.tenancy}"

  # Required for EKS. Enable/disable DNS support in the VPC.
  enable_dns_support = true

  # Required for EKS. Enable/disable DNS hostnames in the VPC.
  enable_dns_hostnames = true

  # Enable/disable ClassicLink for the VPC.
  enable_classiclink = false

  # Enable/disable ClassicLink DNS Support for the VPC.
  enable_classiclink_dns_support = false

  # Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC.
  assign_generated_ipv6_cidr_block = false

  # A map of tags to assign to the resource.
  tags = {
    Name = "{terraform.workspace}-javahome-vpc"
  }
}
