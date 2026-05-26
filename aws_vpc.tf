# aws_vpc resources

resource "aws_vpc" "default_vpc" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "172.31.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_ipam_pool_id                    = null
  region                               = "us-east-1"
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_vpc" "testing_vpc" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.100.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_ipam_pool_id                    = null
  region                               = "us-east-1"
  tags = {
    Name = "Testing VPC"
  }
}

resource "aws_vpc" "vpc_new1" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.53.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv4_ipam_pool_id                    = null
  ipv4_netmask_length                  = null
  ipv6_ipam_pool_id                    = null
  region                               = "us-east-1"
  tags = {
    McmEnvBy = "MCM_PROD"
    McmID    = "UST6_AWS_PRV_10002"
    Name     = "VPC-NEW1"
    mcm-cc   = "6ec50e563ba64c9bb21df34fd65152c0"
    mcm-d    = "7ea2ad33908c422eae4d52f878207300"
    mcm-p    = "276a38a89c6c4707ae2313a68467ffa1"
    mcm-u    = "bde6f4dd71e34d95b397be2271a5c744"
  }
}
