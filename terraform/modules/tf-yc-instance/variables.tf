variable "instance_name" {
  description = "Название виртуальной машины"
  type        = string
}

variable "image_id" {
  description = "ID образа ОС"
  type        = string
}

variable "subnet_id" {
  description = "ID подсети"
  type        = string
}

variable "disk_size_gb" {
  description = "Размер загрузочного диска (GB)"
  type        = number
}

variable "platform_id" {
  description = "Платформа виртуальной машины"
  type        = string
  default     = "standard-v1"  # Стандартная платформа
}

variable "preemptible" {
  description = "Политика планирования: превентивный режим"
  type        = bool
  default     = false  # По умолчанию выключено
}

variable "zone" {
  description = "Зона доступности виртуальной машины"
  type        = string
}

variable "vmcores" {
  description = "Количество ядер"
  type        = number
}

variable "vmmemory" {
  description = "Объем RAM (GB)"
  type        = number
}

variable "vmnat" {
  description = "nat - присвоение публичного IP"
  type        = bool
  default     = true  # По умолчанию включено
}
