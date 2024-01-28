import {
  to = cloudflare_record.ns2
  id = "${var.cloudflare_zone_id}/ee16368fa1d27379d48960af440cf5ad"
}

resource "cloudflare_record" "ns2" {
  zone_id = var.cloudflare_zone_id
  type = "NS"
  name = var.domain
  value = "amos.ns.cloudflare.com"
}