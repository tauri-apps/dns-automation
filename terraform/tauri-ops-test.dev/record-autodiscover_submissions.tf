import {
  to = cloudflare_record.autodiscover_submissions
  id = "${var.cloudflare_zone_id}/b2e6aeabb7f19bfe7c4d49c164996813"
}

resource "cloudflare_record" "autodiscover_submissions" {
  zone_id = var.cloudflare_zone_id
  type    = "SRV"
  name    = "_submissions._tcp"
  comment = "Optional autodiscovery - Standard"
  data {
    name     = var.domain
    port     = 465
    priority = 0
    proto    = "_tcp"
    service  = "_submissions"
    target   = "smtp.migadu.com"
    weight   = 1
  }
}