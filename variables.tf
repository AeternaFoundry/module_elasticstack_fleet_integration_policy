variable "fleet_integration_policies" {
  description = <<EOT
Map of fleet_integration_policies, attributes below
Required:
    - integration_name
    - integration_version
    - name
    - namespace
Optional:
    - additional_datastreams_permissions
    - agent_policy_id
    - agent_policy_ids
    - description
    - force
    - inputs
    - output_id
    - policy_id
    - space_ids
    - vars_json
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    integration_name                   = string
    integration_version                = string
    name                               = string
    namespace                          = string
    additional_datastreams_permissions = optional(list(string))
    agent_policy_id                    = optional(string)
    agent_policy_ids                   = optional(list(string))
    description                        = optional(string)
    force                              = optional(bool)
    inputs = optional(map(object({
      condition = optional(string)
      enabled   = optional(bool)
      streams = optional(map(object({
        condition = optional(string)
        enabled   = optional(bool)
        vars      = optional(string)
      })))
      vars = optional(string)
    })))
    output_id = optional(string)
    policy_id = optional(string)
    space_ids = optional(set(string))
    vars_json = optional(string)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

