data "ovh_okms_secret" "okms_secret_lookup" {
  for_each = var.okms_secret_lookup

  okms_id      = each.value.okms_id
  path         = each.value.path
  include_data = each.value.include_data
  version      = each.value.version
}

