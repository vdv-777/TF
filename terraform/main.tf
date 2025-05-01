# Импортируем модуль для создания сети
module "network" {
  source = "../terraform/modules/tf-yc-network"

  # Передаем переменные зоны доступности (если они требуются)
  zones = var.zones
}

# Импортируем модуль для создания виртуальной машины
module "instance" {
  source = "../terraform/modules/tf-yc-instance"

  instance_name = var.instance_name
  image_id      = var.image_id
  subnet_id     = module.network.default_subnet_id
  zone          = var.zone
  disk_size_gb  = var.disk_size_gb
  platform_id   = var.platform_id
  preemptible   = var.preemptible
  vmcores       = var.vmcores
  vmmemory      = var.vmmemory
  vmnat         = var.vmnat
}
