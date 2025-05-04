# Перменные для провайдера
YC_TOKEN = "*****"
cloud_id = "b1g3jddf4nv5e9okle7p"
folder_id = "b1gp8bok5g6rcfdop766"
zone = "ru-central1-a"

# Переменные для модуля виртуальной машины
instance_name = "chapter5-lesson2-std-ext-017-42"
image_id = "fd80qm01ah03dkqb14lc"
subnet_id = "e9bu0152v0mi0vsm6q7i"
vmcores       = 2
vmmemory      = 2
vmnat         = true
disk_size_gb  = 30
platform_id   = "standard-v3"  # Платформа виртуальной машины
preemptible   = false           # Политика планирования (false по умолчанию)

# Переменные для модуля сети
zones = ["ru-central1-a", "ru-central1-b", "ru-central1-d"]
