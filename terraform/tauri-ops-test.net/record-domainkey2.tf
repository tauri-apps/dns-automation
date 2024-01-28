import {
  to = cloudflare_record.domainkey2
  id = "${var.cloudflare_zone_id}/d6b91d52f3bb620489f47539d6777736"
}

resource "cloudflare_record" "domainkey2" {
  zone_id = var.cloudflare_zone_id
  type = "CNAME"
  name = "key2._domainkey"
  value = "key2.${var.domain}._domainkey.migadu.com"
}