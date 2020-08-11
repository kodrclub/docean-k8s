resource "digitalocean_loadbalancer" "do2-lb" {
  name = "do2-lb"
  region = "ams3"

  forwarding_rule {
    entry_port = 80
    entry_protocol = "http"

    target_port = 80
    target_protocol = "http"
  }

  healthcheck {
    port = 22
    protocol = "tcp"
  }

  # droplet_ids = [digitalocean_droplet.www-1.id, digitalocean_droplet.www-2.id ]
  droplet_tag = "do2-droplet"
}
