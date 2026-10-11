output "api_shield_lookup_id" {
  description = "Map of id values across all api_shield_lookup, keyed the same as var.api_shield_lookup except keys with no id are omitted"
  value       = { for k, v in data.cloudflare_api_shield.api_shield_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_shield_lookup_auth_id_characteristics" {
  description = "Map of auth_id_characteristics values across all api_shield_lookup, keyed the same as var.api_shield_lookup except keys with no auth_id_characteristics are omitted"
  value       = { for k, v in data.cloudflare_api_shield.api_shield_lookup : k => v.auth_id_characteristics if v.auth_id_characteristics != null && length(v.auth_id_characteristics) > 0 }
}
output "api_shield_lookup_normalize" {
  description = "Map of normalize values across all api_shield_lookup, keyed the same as var.api_shield_lookup except keys with no normalize are omitted"
  value       = { for k, v in data.cloudflare_api_shield.api_shield_lookup : k => v.normalize if v.normalize != null }
}
output "api_shield_lookup_zone_id" {
  description = "Map of zone_id values across all api_shield_lookup, keyed the same as var.api_shield_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_api_shield.api_shield_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

