output "data_protection_backup_vaults_id" {
  description = "Map of id values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_protection_backup_vaults_cross_region_restore_enabled" {
  description = "Map of cross_region_restore_enabled values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.cross_region_restore_enabled if v.cross_region_restore_enabled != null }
}
output "data_protection_backup_vaults_datastore_type" {
  description = "Map of datastore_type values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.datastore_type if v.datastore_type != null && length(v.datastore_type) > 0 }
}
output "data_protection_backup_vaults_identity" {
  description = "Map of identity values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => one(v.identity) if v.identity != null && length(v.identity) > 0 }
}
output "data_protection_backup_vaults_immutability" {
  description = "Map of immutability values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.immutability if v.immutability != null && length(v.immutability) > 0 }
}
output "data_protection_backup_vaults_location" {
  description = "Map of location values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.location if v.location != null && length(v.location) > 0 }
}
output "data_protection_backup_vaults_name" {
  description = "Map of name values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_protection_backup_vaults_redundancy" {
  description = "Map of redundancy values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.redundancy if v.redundancy != null && length(v.redundancy) > 0 }
}
output "data_protection_backup_vaults_resource_group_name" {
  description = "Map of resource_group_name values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "data_protection_backup_vaults_retention_duration_in_days" {
  description = "Map of retention_duration_in_days values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.retention_duration_in_days if v.retention_duration_in_days != null }
}
output "data_protection_backup_vaults_soft_delete" {
  description = "Map of soft_delete values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.soft_delete if v.soft_delete != null && length(v.soft_delete) > 0 }
}
output "data_protection_backup_vaults_tags" {
  description = "Map of tags values across all data_protection_backup_vaults, keyed the same as var.data_protection_backup_vaults"
  value       = { for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

