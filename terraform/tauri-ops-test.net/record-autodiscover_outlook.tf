import {
  to = cloudflare_record.autodiscover_outlook
  id = "${var.cloudflare_zone_id}/88e8d36ce6dcda2ca9821be5d27f0187"
}

resource "cloudflare_record" "autodiscover_outlook" {
  zone_id = var.cloudflare_zone_id
  type    = "SRV"
  name    = "_autodiscover._tcp"
  comment = "Optional autodiscovery - Outlook"
  data {
    name     = var.domain
    port     = 443
    priority = 0
    proto    = "_tcp"
    service  = "_autodiscover"
    target   = "autodiscover.migadu.com"
    weight   = 1
  }
}