resource "azurerm_network_interface" "nicblock1" {
  for_each = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.name_ip
    subnet_id                     = data.azurerm_subnet.nicdataBlock1[each.key].id
    private_ip_address_allocation = each.value.private_ip_address_allocation
  }
}