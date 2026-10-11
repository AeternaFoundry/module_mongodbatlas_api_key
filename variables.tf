variable "api_keys" {
  description = <<EOT
Map of api_keys, attributes below
Required:
    - description
    - org_id
    - role_names
EOT

  type = map(object({
    description = string
    org_id      = string
    role_names  = set(string)
  }))
}

