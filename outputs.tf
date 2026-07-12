output "data_protection_backup_vaults_id" {
  description = "Map of id values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.id }
}
output "data_protection_backup_vaults_cross_region_restore_enabled" {
  description = "Map of cross_region_restore_enabled values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.cross_region_restore_enabled }
}
output "data_protection_backup_vaults_datastore_type" {
  description = "Map of datastore_type values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.datastore_type }
}
output "data_protection_backup_vaults_identity" {
  description = "Map of identity values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.identity }
}
output "data_protection_backup_vaults_immutability" {
  description = "Map of immutability values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.immutability }
}
output "data_protection_backup_vaults_location" {
  description = "Map of location values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.location }
}
output "data_protection_backup_vaults_name" {
  description = "Map of name values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.name }
}
output "data_protection_backup_vaults_redundancy" {
  description = "Map of redundancy values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.redundancy }
}
output "data_protection_backup_vaults_resource_group_name" {
  description = "Map of resource_group_name values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.resource_group_name }
}
output "data_protection_backup_vaults_retention_duration_in_days" {
  description = "Map of retention_duration_in_days values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.retention_duration_in_days }
}
output "data_protection_backup_vaults_soft_delete" {
  description = "Map of soft_delete values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.soft_delete }
}
output "data_protection_backup_vaults_tags" {
  description = "Map of tags values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.tags }
}

