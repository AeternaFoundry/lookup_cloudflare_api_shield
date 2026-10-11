variable "api_shield_lookup" {
  description = <<EOT
Map of api_shield_lookup, attributes below
Optional:
    - normalize
    - zone_id
EOT

  type = map(object({
    normalize = optional(bool)
    zone_id   = optional(string)
  }))
}

