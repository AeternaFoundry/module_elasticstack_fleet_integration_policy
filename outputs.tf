output "fleet_integration_policies_id" {
  description = "Map of id values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_integration_policies_additional_datastreams_permissions" {
  description = "Map of additional_datastreams_permissions values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no additional_datastreams_permissions are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.additional_datastreams_permissions if v.additional_datastreams_permissions != null && length(v.additional_datastreams_permissions) > 0 }
}
output "fleet_integration_policies_agent_policy_id" {
  description = "Map of agent_policy_id values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no agent_policy_id are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.agent_policy_id if v.agent_policy_id != null && length(v.agent_policy_id) > 0 }
}
output "fleet_integration_policies_agent_policy_ids" {
  description = "Map of agent_policy_ids values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no agent_policy_ids are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.agent_policy_ids if v.agent_policy_ids != null && length(v.agent_policy_ids) > 0 }
}
output "fleet_integration_policies_description" {
  description = "Map of description values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no description are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "fleet_integration_policies_force" {
  description = "Map of force values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no force are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.force if v.force != null }
}
output "fleet_integration_policies_inputs" {
  description = "Map of inputs values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no inputs are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.inputs if v.inputs != null && length(v.inputs) > 0 }
}
output "fleet_integration_policies_integration_name" {
  description = "Map of integration_name values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no integration_name are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.integration_name if v.integration_name != null && length(v.integration_name) > 0 }
}
output "fleet_integration_policies_integration_version" {
  description = "Map of integration_version values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no integration_version are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.integration_version if v.integration_version != null && length(v.integration_version) > 0 }
}
output "fleet_integration_policies_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_integration_policies_name" {
  description = "Map of name values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_integration_policies_namespace" {
  description = "Map of namespace values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no namespace are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "fleet_integration_policies_output_id" {
  description = "Map of output_id values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no output_id are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.output_id if v.output_id != null && length(v.output_id) > 0 }
}
output "fleet_integration_policies_policy_id" {
  description = "Map of policy_id values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no policy_id are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "fleet_integration_policies_space_ids" {
  description = "Map of space_ids values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no space_ids are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.space_ids if v.space_ids != null && length(v.space_ids) > 0 }
}
output "fleet_integration_policies_vars_json" {
  description = "Map of vars_json values across all fleet_integration_policies, keyed the same as var.fleet_integration_policies except keys with no vars_json are omitted"
  value       = { for k, v in elasticstack_fleet_integration_policy.fleet_integration_policies : k => v.vars_json if v.vars_json != null && length(v.vars_json) > 0 }
  sensitive   = true
}

