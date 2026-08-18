resource "azurerm_resource_group" "rgs" {
    for_each = var.rg-name
    name = each.value.name
    location = each.value.location
    managed_by = each.value.managed_by
    tags = each.value.tags
  
}