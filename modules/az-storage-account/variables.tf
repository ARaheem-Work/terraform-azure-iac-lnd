variable "az_storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
  default     = "st-06112026a"

}

variable "az_resource_group_name" {
  description = "The name of the resource group in which the Azure Storage Account will be created."
  type        = string
  default     = "rg-06-11-2026a"

}
variable "az_resource_group_location" {
  description = "The Azure region where the Storage Account will be created."
  type        = string
  default     = "westus3"

}