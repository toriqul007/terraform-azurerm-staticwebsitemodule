variable "storageact" {
  description = "azurerm storage account name"
  type        = string
}

variable "errorpage" {
  type        = string
  description = "static page for error"
}

variable "indexpage" {
  type        = string
  description = "static page for index"
}

variable "stgacckind" {
  type        = string
  description = "storage account kind"
}
