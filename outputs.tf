output "cloudcontrolapi_resources_id" {
  description = "Map of id values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudcontrolapi_resources_desired_state" {
  description = "Map of desired_state values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.desired_state if v.desired_state != null && length(v.desired_state) > 0 }
}
output "cloudcontrolapi_resources_properties" {
  description = "Map of properties values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "cloudcontrolapi_resources_region" {
  description = "Map of region values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudcontrolapi_resources_role_arn" {
  description = "Map of role_arn values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "cloudcontrolapi_resources_schema" {
  description = "Map of schema values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.schema if v.schema != null && length(v.schema) > 0 }
  sensitive   = true
}
output "cloudcontrolapi_resources_type_name" {
  description = "Map of type_name values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.type_name if v.type_name != null && length(v.type_name) > 0 }
}
output "cloudcontrolapi_resources_type_version_id" {
  description = "Map of type_version_id values across all cloudcontrolapi_resources, keyed the same as var.cloudcontrolapi_resources"
  value       = { for k, v in aws_cloudcontrolapi_resource.cloudcontrolapi_resources : k => v.type_version_id if v.type_version_id != null && length(v.type_version_id) > 0 }
}

