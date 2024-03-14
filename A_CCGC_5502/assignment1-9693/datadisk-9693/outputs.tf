output "data_disk_ids" {
  value = azurerm_managed_disk.datadisk.*.id
  description = "The IDs of the created data disks."
}
