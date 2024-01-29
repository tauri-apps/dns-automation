import {
  to = cloudflare_record.autodiscover_imaps
  id = "${var.cloudflare_zone_id}/28d919c4d4a239b18a9eb521b80dba7f"
}

resource "cloudflare_record" "autodiscover_imaps" {
  zone_id = var.cloudflare_zone_id
  type    = "SRV"
  name    = "_imaps._tcp"
  comment = "Optional autodiscovery - Standard"
  data {
    name     = var.domain
    port     = 993
    priority = 0
    proto    = "_tcp"
    service  = "_imaps"
    target   = "imap.migadu.com"
    weight   = 1
  }
}