import {
  to = cloudflare_record.domainkey1
  id = "${var.cloudflare_zone_id}/f8141dbccdf67b6f15835c2ee4012a9b"
}

resource "cloudflare_record" "domainkey1" {
  zone_id = var.cloudflare_zone_id
  type = "CNAME"
  name = "key1._domainkey"
  value = "key1.${var.domain}._domainkey.migadu.com"
}