import {
  to = cloudflare_record.domainkey2
  id = "${var.cloudflare_zone_id}/cdc58497463c958bb34e52a143754f4c"
}

resource "cloudflare_record" "domainkey2" {
  zone_id = var.cloudflare_zone_id
  type = "CNAME"
  name = "key2._domainkey"
  value = "key2.${var.domain}._domainkey.migadu.com"
}