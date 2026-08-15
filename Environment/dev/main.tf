variable "rg" {}
variable "SA" {}
module "resource_group" {
  source = "../../Module/01_Azurerm_Rg"
  rg     = var.rg
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../../Module/02_Azurerm_sa"
  SA         = var.SA
}