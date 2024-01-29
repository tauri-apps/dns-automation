import {
  to = cloudflare_record.domainkey3
  id = "${var.cloudflare_zone_id}/14f7e94fe0e26757cd88e55f560491fc"
}

resource "cloudflare_record" "domainkey3" {
  zone_id = var.cloudflare_zone_id
  type    = "CNAME"
  name    = "key3._domainkey"
  value   = "key3.${var.domain}._domainkey.migadu.com"
}