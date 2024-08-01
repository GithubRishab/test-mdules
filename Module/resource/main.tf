resource "azurerm_resource_group" "ex1" {
  for_each = var.for_rg
  name = each.value.name
  location = each.value.location
}
