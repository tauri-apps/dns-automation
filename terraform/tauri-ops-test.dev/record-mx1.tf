import {
  to = cloudflare_record.mx1
  id = "${var.cloudflare_zone_id}/8b61b61abcf24c1787c12cfe2cbf5efd"
}

resource "cloudflare_record" "mx1" {
  zone_id = var.cloudflare_zone_id
  type = "MX"
  name = var.domain
  priority = 10
  value = "aspmx1.migadu.com"
}