resource "elasticstack_fleet_integration_policy" "fleet_integration_policies" {
  for_each = var.fleet_integration_policies

  integration_name                   = each.value.integration_name
  integration_version                = each.value.integration_version
  name                               = each.value.name
  namespace                          = each.value.namespace
  additional_datastreams_permissions = each.value.additional_datastreams_permissions
  agent_policy_id                    = each.value.agent_policy_id
  agent_policy_ids                   = each.value.agent_policy_ids
  description                        = each.value.description
  force                              = each.value.force
  inputs                             = each.value.inputs
  output_id                          = each.value.output_id
  policy_id                          = each.value.policy_id
  space_ids                          = each.value.space_ids
  vars_json                          = each.value.vars_json

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

