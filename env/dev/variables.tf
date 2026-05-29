variable "resource_group_name" {
  description = "The name of the resource group in which to create the service plan."
  type        = string
  default     = "rg-05-28-2026a"

}

variable "resource_group_location" {
  default = "westus3"
}

variable "app_service_plan_name" {
  description = "The name of the Azure App Service Plan."
  type        = string
  default     = "asp-05282026a"

}