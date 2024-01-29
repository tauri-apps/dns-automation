import {
  to = cloudflare_record.domainkey3
  id = "${var.cloudflare_zone_id}/453e361bb1d9351f9f42b44084bd8f90"
}

resource "cloudflare_record" "domainkey3" {
  zone_id = var.cloudflare_zone_id
  type    = "CNAME"
  name    = "key3._domainkey"
  value   = "key3.${var.domain}._domainkey.migadu.com"
}