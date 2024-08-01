data "azurerm_network_interface" "nicblock1" {
  for_each = var.virtualmachinee
  name                = each.value.nicname
  resource_group_name = each.value.resource_group_name
}