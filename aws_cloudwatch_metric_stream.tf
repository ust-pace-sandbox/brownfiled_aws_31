# aws_cloudwatch_metric_stream resources

resource "aws_cloudwatch_metric_stream" "custompartial_rf3niz" {
  firehose_arn                    = "arn:aws:firehose:us-east-1:682452625784:deliverystream/PUT-S3-cloudwatch-child-account"
  include_linked_accounts_metrics = true
  name                            = "CustomPartial-rf3NIZ"
  output_format                   = "json"
  region                          = "us-east-1"
  role_arn                        = "arn:aws:iam::682452625784:role/service-role/MetricStreams-FirehosePutRecords-1S5LKBQK"
  include_filter {
    metric_names = []
    namespace    = "AWS/EC2"
  }
  include_filter {
    metric_names = []
    namespace    = "AWS/Lambda"
  }
  include_filter {
    metric_names = []
    namespace    = "AWS/RDS"
  }
}
