import {
  to = cloudflare_record.mail_verify
  id = "${var.cloudflare_zone_id}/5477f8b1912b5690a571cf922642f1be"
}

resource "cloudflare_record" "mail_verify" {
  zone_id = var.cloudflare_zone_id
  type    = "TXT"
  name    = var.domain
  value   = "hosted-email-verify=ld6btrgm"
  comment = "Migadu validation"
}