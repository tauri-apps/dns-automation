import {
  to = cloudflare_record.dmarc
  id = "${var.cloudflare_zone_id}/affb2b4a794acddd27b82f96c9829c60"
}

resource "cloudflare_record" "dmarc" {
  zone_id = var.cloudflare_zone_id
  type    = "TXT"
  name    = "_dmarc"
  value   = "v=DMARC1; p=quarantine;"
}