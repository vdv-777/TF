output "subnet_names" {
  value = [for k, v in data.yandex_vpc_subnet.subnet : v.name]
}
