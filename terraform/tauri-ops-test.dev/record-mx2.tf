import {
  to = cloudflare_record.mx2
  id = "${var.cloudflare_zone_id}/4e7cb174a000f32cd517264f83fec2c9"
}

resource "cloudflare_record" "mx2" {
  zone_id  = var.cloudflare_zone_id
  type     = "MX"
  name     = var.domain
  priority = 20
  value    = "aspmx2.migadu.com"
}