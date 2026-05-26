# aws_cloudwatch_event_rule resources

resource "aws_cloudwatch_event_rule" "amazoncloudwatch_applicationinsights_alarmconfchangemanagedrule" {
  description    = "This rule is used to route EC2, CodeDeploy, Health Events to ApplicationInsights"
  event_bus_name = "default"
  event_pattern = jsonencode({
    detail = {
      operation = ["delete"]
    }
    detail-type = ["CloudWatch Alarm Configuration Change"]
    source      = ["aws.cloudwatch"]
  })
  force_destroy       = false
  name                = "AmazonCloudWatch-ApplicationInsights-AlarmConfChangeManagedRule"
  region              = "us-east-1"
  role_arn            = null
  schedule_expression = null
  state               = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "amazoncloudwatch_applicationinsights_alarmstatechangemanagedrule" {
  description    = "This rule is used to route alarm state changes to Application Insights for monitoring."
  event_bus_name = "default"
  event_pattern = jsonencode({
    detail = {
      state = {
        value = ["ALARM", "OK", "INSUFFICIENT_DATA"]
      }
    }
    detail-type = ["CloudWatch Alarm State Change"]
    source      = ["aws.cloudwatch"]
  })
  force_destroy       = false
  name                = "AmazonCloudWatch-ApplicationInsights-AlarmStateChangeManagedRule"
  region              = "us-east-1"
  role_arn            = null
  schedule_expression = null
  state               = "ENABLED"
}

resource "aws_cloudwatch_event_rule" "amazoncloudwatch_applicationinsights_mangedrule" {
  description    = "This rule is used to route EC2, CodeDeploy, Health Events to ApplicationInsights"
  event_bus_name = "default"
  event_pattern = jsonencode({
    source = ["aws.ec2", "aws.codedeploy", "aws.health", "aws.rds", "aws.states"]
  })
  force_destroy       = false
  name                = "AmazonCloudWatch-ApplicationInsights-MangedRule"
  region              = "us-east-1"
  role_arn            = null
  schedule_expression = null
  state               = "ENABLED"
}
