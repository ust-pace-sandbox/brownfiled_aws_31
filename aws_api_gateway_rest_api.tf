# aws_api_gateway_rest_api resources

resource "aws_api_gateway_rest_api" "notesservice" {
  api_key_source               = "HEADER"
  binary_media_types           = []
  body                         = null
  description                  = "notes service test"
  disable_execute_api_endpoint = false
  fail_on_warnings             = null
  name                         = "NotesService"
  parameters                   = null
  put_rest_api_mode            = "overwrite"
  region                       = "us-east-1"
  endpoint_configuration {
    types = ["EDGE"]
  }
}

resource "aws_api_gateway_rest_api" "service_catalog_apis" {
  api_key_source               = "HEADER"
  binary_media_types           = []
  body                         = null
  description                  = "CRUD APIs for service Catalog"
  disable_execute_api_endpoint = false
  fail_on_warnings             = null
  name                         = "Service Catalog APIs"
  parameters                   = null
  put_rest_api_mode            = "overwrite"
  region                       = "us-east-1"
  endpoint_configuration {
    types = ["EDGE"]
  }
}
