### provider.tf
terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = ">=0.41.0"
    }
  }
}

provider "proxmox" {
  api_token = var.pve_api_token
  endpoint  = var.pve_host_address
  insecure  = true
  tmp_dir   = var.tmp_dir
}
