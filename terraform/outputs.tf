# Общие выходные данные

output "subnet_names" {
  value = module.network.subnet_names
}

output "ip_address" {
  value = module.instance.ip_address
}
