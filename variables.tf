variable "cloudcontrolapi_resources" {
  description = <<EOT
Map of cloudcontrolapi_resources, attributes below
Required:
    - desired_state
    - type_name
Optional:
    - region
    - role_arn
    - schema
    - type_version_id
EOT

  type = map(object({
    desired_state   = string
    type_name       = string
    region          = optional(string)
    role_arn        = optional(string)
    schema          = optional(string)
    type_version_id = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudcontrolapi_resources : (
        can(regex("[0-9A-Za-z]{2,64}::[0-9A-Za-z]{2,64}::[0-9A-Za-z]{2,64}", v.type_name))
      )
    ])
    error_message = "must be three alphanumeric sections separated by double colons (::)"
  }
}

