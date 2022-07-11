# Kubernetes assets (kubeconfig, manifests)
module "bootstrap" {
  source = "git::https://github.com/claneys/terraform-render-bootstrap.git?ref=ab1819c5e2f3619531814b97d454315b012cc393"

  cluster_name                    = var.cluster_name
  api_servers                     = [var.k8s_domain_name]
  kv_version                      = var.kv_version
  kv_interface                    = var.kv_interface
  etcd_servers                    = var.controllers.*.domain
  networking                      = var.networking
  network_mtu                     = var.network_mtu
  network_ip_autodetection_method = var.network_ip_autodetection_method
  pod_cidr                        = var.pod_cidr
  service_cidr                    = var.service_cidr
  cluster_domain_suffix           = var.cluster_domain_suffix
  enable_reporting                = var.enable_reporting
  enable_aggregation              = var.enable_aggregation
}

