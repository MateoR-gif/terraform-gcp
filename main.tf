# Configuración del Proveedor
provider "google"{
    project = "terraform-gcp-440722"
    credentials = file("credentials.json")
    region = "us-central1"
    zone = "us-central1-a"
}

# Configuración de los Recursos

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-gcp-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    ssh-keys = "service-account-terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDDTNLYWqzu7evrcKvcaXNKIeJR5jekvp8uTUj4+LGhxGm4lRkRUbDYA1vtIy+wnKphX8UoJ9D4Dj47IbBqf5rHbEt0fuPY2Xu/HMGSdehgsldlQErBo8stOLHYu6W33WqC/EwuJhAQDHrPHCUmVotOjJj9afmWZis6YtiGyuD95TxwfsaBF/31YjgaC/2SPtLrD+n/xe27sXTEiN7wzMIPKp8BEaHVuQljlGPmgJL4oLTjhK8Rfrx01mbcz/Vz8idEp5ty0PXC6RSJRkgq8kY6+t73qbGdm85gpfPpqplrMKFYK+Oc1ix1KY5q/1PrK+dnEP6Sit9rGcVcPVxKyDJqL1olDZQwcHkdX1UueTu1I6kvUmpReqvpfYJYxcn2zpT+pBBU83UIMr/MhxUaKOLUkCPGz1DCkbYugBsSZa76vphqGvOiqvFFsYKTUt3Ksi2H3DMB0DCHlAWI8ADKY8P0LIrT6Da9uoZBDyOpU3Hk7tdFKV2C/s+wvYs/2+9SZFa8W4vkozu0AmqyKSJclRj8pYUoMXElqCVNxq58LbUth7EG4jEen8yrApDhl8DFDFwIpjHG4gjj67zPtZzgbGm87lu9g+kS0Iy4OXhS9WgY8GM5qVmdp43l9AFlg4xDKcEvywrBiUp4vJoZW1VaLajqexC9cqtMybjtsvH3wb2FnQ== mateorendon008@gmail.com"
  }
}
