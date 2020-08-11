  output "lb-addr" {
    value = digitalocean_loadbalancer.do2-lb.ip
  }
  output "lb-urn" {
    value = digitalocean_loadbalancer.do2-lb.urn
  }

  # output "w1-addr" {
  #   value = digitalocean_droplet.www-1.ipv4_address
  # }

  # output "w2-addr" {
  #   value = digitalocean_droplet.www-2.ipv4_address
  # }