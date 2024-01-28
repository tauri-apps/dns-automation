import {
  to = cloudflare_record.spf
  id = "${var.cloudflare_zone_id}/397d8038c4a50a0fcadf518f868a793f"
}

resource "cloudflare_record" "spf" {
  zone_id = var.cloudflare_zone_id
  type = "TXT"
  name = var.domain
  value = "v=spf1 include:spf.migadu.com -all"
}