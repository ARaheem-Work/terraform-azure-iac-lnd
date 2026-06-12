variable "resource_group_name" {
  description = "The name of the resource group in which to create the service plan."
  type        = string
  default     = "rg-06-11-2026a"

}

variable "resource_group_location" {
  default = "westus3"
}

variable "app_service_plan_name" {
  description = "The name of the Azure App Service Plan."
  type        = string
  default     = "asp-05282026a"

}

variable "az_storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
  default     = "st-06112026a"

}