import {
  to = cloudflare_record.autodiscover_thunderbird
  id = "${var.cloudflare_zone_id}/a235239b4b30c499fbd51006f7d51b4e"
}

resource "cloudflare_record" "autodiscover_thunderbird" {
  zone_id = var.cloudflare_zone_id
  type    = "CNAME"
  name    = "autoconfig"
  value   = "autoconfig.migadu.com"
  comment = "Optional autodiscovery - Thunderbird"
}