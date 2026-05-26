# aws_ebs_volume resources

resource "aws_ebs_volume" "edgeopshelmcluster_vol_00019014a6ddadc07" {
  availability_zone    = "us-east-1c"
  encrypted            = false
  final_snapshot       = null
  iops                 = 3000
  multi_attach_enabled = false
  outpost_arn          = null
  region               = "us-east-1"
  size                 = 60
  snapshot_id          = "snap-0641de1fa81290ea6"
  tags = {
    "eks:cluster-name"   = "Edgeopshelmcluster"
    "eks:nodegroup-name" = "Edgeopshelmcluster-v1-33-xlarge-3-1-33-8-20260224"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "mars2024101101_ch_vol" {
  availability_zone    = "us-east-1b"
  encrypted            = false
  final_snapshot       = false
  iops                 = 100
  multi_attach_enabled = false
  outpost_arn          = null
  region               = "us-east-1"
  size                 = 20
  tags = {
    CSIVolumeName                              = "pvc-699f1320-31f5-4d15-856e-bb2ab5f3f650"
    KubernetesCluster                          = "Edgeopshelmcluster"
    Name                                       = "Edgeopshelmcluster-dynamic-pvc-699f1320-31f5-4d15-856e-bb2ab5f3f650"
    "ebs.csi.aws.com/cluster"                  = "true"
    "kubernetes.io/cluster/Edgeopshelmcluster" = "owned"
    "kubernetes.io/created-for/pv/name"        = "pvc-699f1320-31f5-4d15-856e-bb2ab5f3f650"
    "kubernetes.io/created-for/pvc/name"       = "mars2024101101-ch"
    "kubernetes.io/created-for/pvc/namespace"  = "dev"
  }
  type       = "gp2"
}

resource "aws_ebs_volume" "mars2024101401_pg_0_vol" {
  availability_zone    = "us-east-1c"
  encrypted            = false
  final_snapshot       = false
  iops                 = 100
  multi_attach_enabled = false
  outpost_arn          = null
  region               = "us-east-1"
  size                 = 20
  tags = {
    CSIVolumeName                              = "pvc-34073914-e920-4dba-9ee8-d2cf3b580aa7"
    KubernetesCluster                          = "Edgeopshelmcluster"
    Name                                       = "Edgeopshelmcluster-dynamic-pvc-34073914-e920-4dba-9ee8-d2cf3b580aa7"
    "ebs.csi.aws.com/cluster"                  = "true"
    "kubernetes.io/cluster/Edgeopshelmcluster" = "owned"
    "kubernetes.io/created-for/pv/name"        = "pvc-34073914-e920-4dba-9ee8-d2cf3b580aa7"
    "kubernetes.io/created-for/pvc/name"       = "data-mars2024101401-pg-0"
    "kubernetes.io/created-for/pvc/namespace"  = "dev"
  }
  type = "gp2"
}
