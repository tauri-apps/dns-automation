import {
  to = cloudflare_record.autodiscover_thunderbird
  id = "${var.cloudflare_zone_id}/cdd8740ea3e30edb4ae83535868e4051"
}

resource "cloudflare_record" "autodiscover_thunderbird" {
  zone_id = var.cloudflare_zone_id
  type    = "CNAME"
  name    = "autoconfig"
  value   = "autoconfig.migadu.com"
  comment = "Optional autodiscovery - Thunderbird"
}