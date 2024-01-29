import {
  to = cloudflare_record.autodiscover_outlook
  id = "${var.cloudflare_zone_id}/bf0c8031dfa7a2ca0d15c4f0a93023f3"
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