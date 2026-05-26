# aws_security_group resources

resource "aws_security_group" "k8s_elb_a23d809284012406dbf2d546877c63c2" {
  description = "Security group for Kubernetes ELB a23d809284012406dbf2d546877c63c2 (default/spring-petclinic)"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 3
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "icmp"
    security_groups  = []
    self             = false
    to_port          = 4
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 8080
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 8080
  }]
  name                   = "k8s-elb-a23d809284012406dbf2d546877c63c2"
  region                 = "us-east-1"
  revoke_rules_on_delete = null
  tags = {
    "kubernetes.io/cluster/QDB-EKS" = "owned"
  }
  vpc_id = "vpc-0b85286a4dd4a9182"
}

resource "aws_security_group" "security_group_for_inbound_nfs_d_7usl1uldoie5" {
  description = "[DO NOT DELETE] Security Group that allows inbound NFS traffic for SageMaker Notebooks Domain [d-7usl1uldoie5]"
  # egress = [] # Removed empty rule block
  ingress = [{
    cidr_blocks      = []
    description      = ""
    from_port        = 2049
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = ["sg-0feb336eb2acd5a15"]
    self             = false
    to_port          = 2049
  }]
  name                   = "security-group-for-inbound-nfs-d-7usl1uldoie5"
  region                 = "us-east-1"
  revoke_rules_on_delete = null
  tags = {
    ManagedByAmazonSageMakerResource = "arn:aws:sagemaker:us-east-1:682452625784:domain/d-7usl1uldoie5"
  }
  vpc_id = "vpc-03cfc064"
}
