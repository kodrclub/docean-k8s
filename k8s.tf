resource "digitalocean_kubernetes_cluster" "do2-k8s" {
  name    = "do2-k8s"
  region  = var.region

  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.16.13-do.0"

  node_pool {
    name       = "do2-k8s-worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 3
    tags       = ["do2-droplet", "do2-pool"]
  }
}