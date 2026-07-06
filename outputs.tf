output "data_protection_backup_vaults" {
  description = "All data_protection_backup_vault resources"
  value       = azurerm_data_protection_backup_vault.data_protection_backup_vaults
}
output "data_protection_backup_vaults_cross_region_restore_enabled" {
  description = "List of cross_region_restore_enabled values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.cross_region_restore_enabled]
}
output "data_protection_backup_vaults_datastore_type" {
  description = "List of datastore_type values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.datastore_type]
}
output "data_protection_backup_vaults_identity" {
  description = "List of identity values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.identity]
}
output "data_protection_backup_vaults_immutability" {
  description = "List of immutability values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.immutability]
}
output "data_protection_backup_vaults_location" {
  description = "List of location values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.location]
}
output "data_protection_backup_vaults_name" {
  description = "List of name values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.name]
}
output "data_protection_backup_vaults_redundancy" {
  description = "List of redundancy values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.redundancy]
}
output "data_protection_backup_vaults_resource_group_name" {
  description = "List of resource_group_name values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.resource_group_name]
}
output "data_protection_backup_vaults_retention_duration_in_days" {
  description = "List of retention_duration_in_days values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.retention_duration_in_days]
}
output "data_protection_backup_vaults_soft_delete" {
  description = "List of soft_delete values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.soft_delete]
}
output "data_protection_backup_vaults_tags" {
  description = "List of tags values across all data_protection_backup_vaults"
  value       = [for k, v in azurerm_data_protection_backup_vault.data_protection_backup_vaults : v.tags]
}

