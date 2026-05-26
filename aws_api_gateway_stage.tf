# aws_api_gateway_stage resources

resource "aws_api_gateway_stage" "service_catalog_apis_dev" {
  cache_cluster_enabled = false
  cache_cluster_size    = null
  client_certificate_id = null
  deployment_id         = "z4homk"
  description           = null
  documentation_version = null
  region                = "us-east-1"
  rest_api_id           = "fi7jhb8xrk"
  stage_name            = "dev"
  variables             = {}
  xray_tracing_enabled  = false
}

resource "aws_api_gateway_stage" "service_catalog_apis_prod" {
  cache_cluster_enabled = false
  cache_cluster_size    = null
  client_certificate_id = null
  deployment_id         = "tcgbak"
  description           = null
  documentation_version = null
  region                = "us-east-1"
  rest_api_id           = "fi7jhb8xrk"
  stage_name            = "prod"
  variables             = {}
  xray_tracing_enabled  = false
}
