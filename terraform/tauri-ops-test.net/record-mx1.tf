import {
  to = cloudflare_record.mx1
  id = "${var.cloudflare_zone_id}/c80985d13b95ef462c73153b302249f9"
}

resource "cloudflare_record" "mx1" {
  zone_id  = var.cloudflare_zone_id
  type     = "MX"
  name     = var.domain
  priority = 10
  value    = "aspmx1.migadu.com"
}