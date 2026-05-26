# aws_eip resources

resource "aws_eip" "dagility_sandbox_elasticip" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-1"
  network_interface         = "eni-01f0635e2b51950b1"
  public_ipv4_pool          = "amazon"
  region                    = "us-east-1"
  tags = {
    Name = "DAgility-Sandbox-ElasticIP"
  }
}

resource "aws_eip" "eip_52_1_62_207" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  instance                  = "i-0872e6dad268d354b"
  network_border_group      = "us-east-1"
  network_interface         = "eni-0fc85802d1d64dc7f"
  public_ipv4_pool          = "amazon"
  region                    = "us-east-1"
}

resource "aws_eip" "gitlift_vpc_us_east_1a" {
  address                   = null
  associate_with_private_ip = null
  customer_owned_ipv4_pool  = null
  domain                    = "vpc"
  network_border_group      = "us-east-1"
  network_interface         = "eni-07f47ce1e04c1bac6"
  public_ipv4_pool          = "amazon"
  region                    = "us-east-1"
  tags = {
    Environment = "test"
    Name        = "gitlift-vpc-us-east-1a"
  }
}
