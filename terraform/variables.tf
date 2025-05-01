# Основные переменные для корневого модуля

variable "cloud_id" {
  description = "Идентификатор облака"
  type        = string
}

variable "folder_id" {
  description = "Идентификатор папки"
  type        = string
}

variable "zone" {
  description = "Зона доступности"
  type        = string
}

variable "zones" {
  description = "Список зон доступности"
  type        = list(string)
  default     = ["ru-central1-a", "ru-central1-b", "ru-central1-c"]
}

variable "YC_TOKEN" {
  description = "YC токен авторизации"
  type        = string
}

# Переменные для модуля виртуальной машины

variable "instance_name" {
  description = "Имя виртуальной машины"
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
  default     = 50
}

variable "platform_id" {
  description = "Платформа виртуальной машины"
  type        = string
  default     = "standard-v1"
}

variable "preemptible" {
  description = "Политика планирования: превентивное отключение"
  type        = bool
  default     = false
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
