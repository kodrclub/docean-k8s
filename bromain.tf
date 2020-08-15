# data "digitalocean_loadbalancer" "example" {
#   name = "gittix-lb"
# }

# resource "digitalocean_domain" "default" {
#    name = "kodr.xyz"
#    ip_address = data.digitalocean_loadbalancer.example.ip
# }

# resource "digitalocean_record" "CNAME-www" {
#   domain = digitalocean_domain.default.name
#   type = "CNAME"
#   name = "www"
#   value = "@"
# }