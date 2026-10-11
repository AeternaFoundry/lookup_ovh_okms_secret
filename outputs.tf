output "okms_secret_lookup_data" {
  description = "Map of data values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no data are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "okms_secret_lookup_iam" {
  description = "Map of iam values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no iam are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.iam if v.iam != null && length(v.iam) > 0 }
}
output "okms_secret_lookup_include_data" {
  description = "Map of include_data values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no include_data are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.include_data if v.include_data != null }
}
output "okms_secret_lookup_metadata" {
  description = "Map of metadata values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no metadata are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "okms_secret_lookup_okms_id" {
  description = "Map of okms_id values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no okms_id are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.okms_id if v.okms_id != null && length(v.okms_id) > 0 }
}
output "okms_secret_lookup_path" {
  description = "Map of path values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no path are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "okms_secret_lookup_version" {
  description = "Map of version values across all okms_secret_lookup, keyed the same as var.okms_secret_lookup except keys with no version are omitted"
  value       = { for k, v in data.ovh_okms_secret.okms_secret_lookup : k => v.version if v.version != null }
}

