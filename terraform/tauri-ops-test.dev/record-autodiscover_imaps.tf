import {
  to = cloudflare_record.autodiscover_imaps
  id = "${var.cloudflare_zone_id}/ee6ee5c262565e3aef100924f4476305"
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