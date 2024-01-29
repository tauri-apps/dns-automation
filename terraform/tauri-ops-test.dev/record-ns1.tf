import {
  to = cloudflare_record.ns1
  id = "${var.cloudflare_zone_id}/83cf50789934c9586d0d8c08fcbeb504"
}

resource "cloudflare_record" "ns1" {
  zone_id = var.cloudflare_zone_id
  type    = "NS"
  name    = var.domain
  value   = "haley.ns.cloudflare.com"
}