import {
  to = cloudflare_record.autodiscover_submissions
  id = "${var.cloudflare_zone_id}/5a623a219d93298a8c1581be5f3dea53"
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