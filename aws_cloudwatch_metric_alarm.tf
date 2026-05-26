# aws_cloudwatch_metric_alarm resources

resource "aws_cloudwatch_metric_alarm" "ciphercontext_readcapacityunitslimit_basicalarm" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:us-east-1:682452625784:dynamodb"]
  alarm_description   = null
  alarm_name          = "CipherContext-ReadCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  dimensions = {
    TableName = "CipherContext"
  }
  evaluation_periods        = 5
  extended_statistic        = null
  insufficient_data_actions = []
  metric_name               = "ConsumedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  ok_actions                = []
  period                    = 60
  region                    = "us-east-1"
  statistic                 = "Sum"
  threshold                 = 240
  threshold_metric_id       = null
  treat_missing_data        = "missing"
  unit                      = null
}

resource "aws_cloudwatch_metric_alarm" "notes_readcapacityunitslimit_basicalarm" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:us-east-1:682452625784:dynamodb"]
  alarm_description   = null
  alarm_name          = "Notes-ReadCapacityUnitsLimit-BasicAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  dimensions = {
    TableName = "Notes"
  }
  evaluation_periods        = 5
  extended_statistic        = null
  insufficient_data_actions = []
  metric_name               = "ConsumedReadCapacityUnits"
  namespace                 = "AWS/DynamoDB"
  ok_actions                = []
  period                    = 60
  region                    = "us-east-1"
  statistic                 = "Sum"
  threshold                 = 240
  threshold_metric_id       = null
  treat_missing_data        = "missing"
  unit                      = null
}
