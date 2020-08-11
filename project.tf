resource "digitalocean_project" "docean2-prj" {
  name        = "docean2-prj"
  description = "A project to test DO K8s clusters."
  purpose     = "Web Application"
  environment = "Development"
  resources = [
    digitalocean_loadbalancer.do2-lb.urn,
  ]
        #k8s cluster
        #loadbalancer
    #domain?
    #storage?
    #database?
}
#TODO: tfstate bucket