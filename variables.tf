variable "okms_secret_lookup" {
  description = <<EOT
Map of okms_secret_lookup, attributes below
Required:
    - okms_id
    - path
Optional:
    - include_data
    - version
EOT

  type = map(object({
    okms_id      = string
    path         = string
    include_data = optional(bool)
    version      = optional(number)
  }))
}

