data "cloudflare_api_shield" "api_shield_lookup" {
  for_each = var.api_shield_lookup

  normalize = each.value.normalize
  zone_id   = each.value.zone_id
}

