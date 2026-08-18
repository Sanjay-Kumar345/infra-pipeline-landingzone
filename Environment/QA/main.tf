module "rg-resource" {
  source  = "../../Modules/azurerm_resource_group"
  rg-name = var.rg-name

}

module "strg-resource" {
  source     = "../../Modules/azurerm_storage_account"
  strg-name  = var.strg-name
  depends_on = [module.rg-resource]
}
