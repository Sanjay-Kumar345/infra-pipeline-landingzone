resource "azurerm_resource_group" "rgs-rogers" {
    for_each = var.rg-name
    name = each.value.name
    location = each.value.location
    managed_by = each.value.managed_by
    tags = each.value.tags
  
}

moved {
  from = azurerm_resource_group.rgs
  to = azurerm_resource_group.rgs-rogers
}

resource "null_resource" "rg_created" {
    depends_on = [ azurerm_resource_group.rgs-rogers ]
    provisioner "local-exec" {
      
      command = "echo resource group created successfully"
    }
  
}