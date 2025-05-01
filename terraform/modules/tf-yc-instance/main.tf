resource "yandex_compute_instance" "vm" {

  name = var.instance_name

  platform_id = var.platform_id

  resources {
    cores  = var.vmcores
    memory = var.vmmemory
  }

  scheduling_policy {
    preemptible = var.preemptible
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.disk_size_gb
    }
 }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.vmnat
  }

metadata = {
  user-data = file("${path.module}/tf-cloud-init.yaml")
 }

}

