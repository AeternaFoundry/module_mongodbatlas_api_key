output "api_keys_id" {
  description = "Map of id values across all api_keys, keyed the same as var.api_keys except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_keys_api_key_id" {
  description = "Map of api_key_id values across all api_keys, keyed the same as var.api_keys except keys with no api_key_id are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.api_key_id if v.api_key_id != null && length(v.api_key_id) > 0 }
}
output "api_keys_description" {
  description = "Map of description values across all api_keys, keyed the same as var.api_keys except keys with no description are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.description if v.description != null && length(v.description) > 0 }
}
output "api_keys_org_id" {
  description = "Map of org_id values across all api_keys, keyed the same as var.api_keys except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "api_keys_private_key" {
  description = "Map of private_key values across all api_keys, keyed the same as var.api_keys except keys with no private_key are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.private_key if v.private_key != null && length(v.private_key) > 0 }
  sensitive   = true
}
output "api_keys_public_key" {
  description = "Map of public_key values across all api_keys, keyed the same as var.api_keys except keys with no public_key are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.public_key if v.public_key != null && length(v.public_key) > 0 }
}
output "api_keys_role_names" {
  description = "Map of role_names values across all api_keys, keyed the same as var.api_keys except keys with no role_names are omitted"
  value       = { for k, v in mongodbatlas_api_key.api_keys : k => v.role_names if v.role_names != null && length(v.role_names) > 0 }
}

