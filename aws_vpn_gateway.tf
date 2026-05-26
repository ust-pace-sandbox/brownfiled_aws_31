# aws_vpn_gateway resources

resource "aws_vpn_gateway" "default_vpg" {
  amazon_side_asn   = "64512"
  availability_zone = null
  region            = "us-east-1"
  tags = {
    Name = "Default-VPG"
  }
  vpc_id = "vpc-03cfc064"
}

resource "aws_vpn_gateway" "eks_vpg" {
  amazon_side_asn   = "64512"
  availability_zone = null
  region            = "us-east-1"
  tags = {
    Name    = "EKS-VPG"
    S2S_VPN = "catalyst"
  }
  vpc_id = "vpc-03faa642e5ca94a2d"
}

resource "aws_vpn_gateway" "kops_vpg" {
  amazon_side_asn   = "64512"
  availability_zone = null
  region            = "us-east-1"
  tags = {
    Name = "KOPS-VPG"
  }
  vpc_id = "vpc-015a692d2d648bdd9"
}
