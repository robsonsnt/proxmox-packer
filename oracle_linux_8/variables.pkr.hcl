variable "proxmox_url" {
  type    = string
  default = ""
}

variable "proxmox_insecure_skip_tls_verify" {
  type    = bool
  default = true
}

variable "proxmox_node" {
  type    = string
  default = ""
}

variable "proxmox_username" {
  type    = string
  default = ""
}

variable "proxmox_token" {
  type    = string
  default = ""
}

variable "proxmox_password" {
  type    = string
  default = ""
}

variable "ssh_username" {
  type    = string
  default = ""
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "ssh_timeout" {
  type    = string
  default = "20m"
}

variable "ssh_password" {
  type    = string
  default = ""
}

variable "ol8_image" {
  type    = string
  default = "OracleLinux-R8-U8-x86_64-dvd.iso"
}

variable "proxmox_iso_pool" {
  type    = string
  default = "local:iso"
}

variable "unmount_iso" {
  type    = bool
  default = true
}

variable "proxmox_storage_format" {
  type    = string
  default = "raw"
}

variable "proxmox_storage_pool" {
  type    = string
  default = "local-lvm"
}

variable "efi_config_type" {
  type    = string
  default = "4m"
}

variable "efi_config_pre_enrolled_keys" {
  type    = bool
  default = true
}

variable "proxmox_storage_pool_type" {
  type    = string
  default = "lvm-thin"
}

variable "http_directory" {
  type    = string
  default = "oracle_linux_8/http"
}

variable "template_description" {
  type    = string
  default = "Oracle Linux 8 Template"
}

variable "template_name" {
  type    = string
  default = "OracleLinux8-Template-CI"
}

variable "version" {
  type    = string
  default = ""
}

variable "vm_id" {
  type    = number
  default = 134
}

variable "vm_os" {
  type    = string
  default = "l26"
}

variable "vm_memory" {
  type    = string
  default = "2048"
}

variable "vm_vcpus" {
  type    = string
  default = "2"
}

variable "vm_disk_size" {
  type    = string
  default = "14G"
}

variable "vm_disk_type" {
  type    = string
  default = "scsi"
}

variable "vm_scsi_controller" {
  type    = string
  default = "virtio-scsi-single"
}

variable "vm_network_adapters_bridge" {
  type    = string
  default = "vmbr0"
}

variable "vm_network_adapters_model" {
  type    = string
  default = "virtio"
}

variable "vm_boot_wait" {
  type    = string
  default = "20s"
}

variable "cloud_init" {
  type    = bool
  default = true
}

