data "yandex_vpc_network" "default" {
  name = "default"
}

data "yandex_vpc_subnet" "subnet" {
  for_each = toset(var.zones)
  name     = format("default-%s", each.value)
}

output "default_subnet_id" {
  value =  try(values(data.yandex_vpc_subnet.subnet)[0].id, null)
}
