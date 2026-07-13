variable "data_protection_backup_vaults" {
  description = <<EOT
Map of data_protection_backup_vaults, attributes below
Required:
    - datastore_type
    - location
    - name
    - redundancy
    - resource_group_name
Optional:
    - cross_region_restore_enabled
    - immutability
    - retention_duration_in_days
    - soft_delete
    - tags
    - identity (block):
        - identity_ids (optional)
        - type (required)
EOT

  type = map(object({
    datastore_type               = string
    location                     = string
    name                         = string
    redundancy                   = string
    resource_group_name          = string
    cross_region_restore_enabled = optional(bool)
    immutability                 = optional(string)
    retention_duration_in_days   = optional(number)
    soft_delete                  = optional(string)
    tags                         = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_vaults : (
        can(regex("^[-a-zA-Z0-9]{2,50}$", v.name))
      )
    ])
    error_message = "DataProtection BackupVault name must be 2 - 50 characters long, contain only letters, numbers and hyphens.)."
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_vaults : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_vaults : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_vaults : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_vaults : (
        v.retention_duration_in_days == null || (v.retention_duration_in_days >= 14 && v.retention_duration_in_days <= 180)
      )
    ])
    error_message = "must be between 14 and 180"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_protection_backup_vaults : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

