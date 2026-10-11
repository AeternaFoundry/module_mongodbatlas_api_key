resource "mongodbatlas_api_key" "api_keys" {
  for_each = var.api_keys

  description = each.value.description
  org_id      = each.value.org_id
  role_names  = each.value.role_names
}

