resource "digitalocean_domain" "default" {
   name = "kodr.xyz"
   ip_address = digitalocean_loadbalancer.do2-lb.ip
}

resource "digitalocean_record" "CNAME-www" {
  domain = digitalocean_domain.default.name
  type = "CNAME"
  name = "www"
  value = "@"
}