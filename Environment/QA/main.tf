module "rg-resource" {
  source  = "../../Modules/azurerm_resource_group"
  rg-name = var.rg-name

}

module "strg-resource" {
  source     = "../../Modules/azurerm_storage_account"
  strg-name  = var.strg-name
  depends_on = [module.rg-resource]
}

import {
  to = module.rg-resource.azurerm_resource_group.rgs-rogers["rg1"]

  id = "/subscriptions/c871edac-c1c7-4ec0-a6a8-afac9fd8a115/resourceGroups/test-rg"
}
