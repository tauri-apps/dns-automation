import {
  to = cloudflare_record.autodiscover_pop3s
  id = "${var.cloudflare_zone_id}/042756e704b4b76f3bdbe6295d25dbc6"
}

resource "cloudflare_record" "autodiscover_pop3s" {
  zone_id = var.cloudflare_zone_id
  type = "SRV"
  name = "_pop3s._tcp"
  comment = "Optional autodiscovery - Standard"
  data {
    name = var.domain
    port = 995
    priority = 0
    proto = "_tcp"
    service = "_pop3s"
    target = "pop.migadu.com"
    weight = 1
  }
}