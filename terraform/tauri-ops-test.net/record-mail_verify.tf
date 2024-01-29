import {
  to = cloudflare_record.mail_verify
  id = "${var.cloudflare_zone_id}/fc6b47717cff911119b527724c91af06"
}

resource "cloudflare_record" "mail_verify" {
  zone_id = var.cloudflare_zone_id
  type    = "TXT"
  name    = var.domain
  value   = "hosted-email-verify=y8bzzq5y"
  comment = "Migadu validation"
}