import {
  to = cloudflare_record.mx2
  id = "${var.cloudflare_zone_id}/863ccae3f19531781395626383484bdb"
}

resource "cloudflare_record" "mx2" {
  zone_id  = var.cloudflare_zone_id
  type     = "MX"
  name     = var.domain
  priority = 20
  value    = "aspmx2.migadu.com"
}