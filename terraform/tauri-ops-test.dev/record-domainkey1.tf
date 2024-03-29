import {
  to = cloudflare_record.domainkey1
  id = "${var.cloudflare_zone_id}/d9fb78100945d6d68e622a4c9038aa81"
}

resource "cloudflare_record" "domainkey1" {
  zone_id = var.cloudflare_zone_id
  type    = "CNAME"
  name    = "key1._domainkey"
  value   = "key1.${var.domain}._domainkey.migadu.com"
}