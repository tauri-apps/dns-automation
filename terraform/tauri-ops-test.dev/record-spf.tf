import {
  to = cloudflare_record.spf
  id = "${var.cloudflare_zone_id}/5c22a932bdfb3b1110a18d6b9da59702"
}

resource "cloudflare_record" "spf" {
  zone_id = var.cloudflare_zone_id
  type = "TXT"
  name = var.domain
  value = "v=spf1 include:spf.migadu.com -all"
}