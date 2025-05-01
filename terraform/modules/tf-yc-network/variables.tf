variable "zones" {
  description = "Список зон доступности"
  type        = list(string)
  default     = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
}
