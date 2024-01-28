import {
  to = cloudflare_record.dmarc
  id = "${var.cloudflare_zone_id}/b517fb0a6c8d9d9ee29b0891d18ad2e1"
}

resource "cloudflare_record" "dmarc" {
  zone_id = var.cloudflare_zone_id
  type = "TXT"
  name = "_dmarc"
  value = "v=DMARC1; p=quarantine;"
}