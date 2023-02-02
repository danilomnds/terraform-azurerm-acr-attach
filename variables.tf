variable "aks_name" {
  type = string  
}

variable "aks_rg" {
  type = string  
}

variable "name" {
  type = string
  default = null
}

variable "scope" {
  type = string
}

variable "condition" {
  type = string
  default = null
}

variable "condition_version" {
  type = string
  default = null
}

variable "delegated_managed_identity_resource_id" {
  type = string
  default = null
}

variable "description" {
  type = string
  default = null
}

variable "skip_service_principal_aad_check" {
  type = bool
  default = false
}