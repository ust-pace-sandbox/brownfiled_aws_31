# aws_subnet resources

resource "aws_subnet" "eks_secure_private_us_east_1c" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-east-1c"
  cidr_block                                     = "172.20.64.0/19"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv4_ipam_pool_id                              = null
  ipv4_netmask_length                            = null
  ipv6_ipam_pool_id                              = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "us-east-1"
  tags = {
    Name                               = "eks-secure_private_us-east-1c"
    "kubernetes.io/cluster/eks-secure" = "shared"
    "kubernetes.io/role/internal-elb"  = "1"
  }
  vpc_id = "vpc-0e4d2c5a50cb2a7e5"
}

resource "aws_subnet" "gitlift_vpc_public_us_east_1a" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-east-1a"
  cidr_block                                     = "10.0.101.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv4_ipam_pool_id                              = null
  ipv4_netmask_length                            = null
  ipv6_ipam_pool_id                              = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "us-east-1"
  tags = {
    Environment = "test"
    Name        = "gitlift-vpc-public-us-east-1a"
  }
  vpc_id = "vpc-056321eca2c91f864"
}

resource "aws_subnet" "gitlift_vpc_public_us_east_1b" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-east-1b"
  cidr_block                                     = "10.0.102.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv4_ipam_pool_id                              = null
  ipv4_netmask_length                            = null
  ipv6_ipam_pool_id                              = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "us-east-1"
  tags = {
    Environment = "test"
    Name        = "gitlift-vpc-public-us-east-1b"
  }
  vpc_id = "vpc-056321eca2c91f864"
}

resource "aws_subnet" "testing_subnet_private_1" {
  assign_ipv6_address_on_creation                = false
  availability_zone                              = "us-east-1b"
  cidr_block                                     = "10.100.1.0/24"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv4_ipam_pool_id                              = null
  ipv4_netmask_length                            = null
  ipv6_ipam_pool_id                              = null
  ipv6_native                                    = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  region                                         = "us-east-1"
  tags = {
    Name                                           = "Testing subnet private 1"
    SubnetType                                     = "Public"
    "kubernetes.io/cluster/kops.test.dagility.com" = "shared"
    "kubernetes.io/role/elb"                       = "1"
  }
  vpc_id = "vpc-015a692d2d648bdd9"
}
