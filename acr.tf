resource "azurerm_container_registry" "acr" {
  name                = format("acr%s%s%s", var.project, var.environment, var.location_short)
  resource_group_name = module.rg.name
  location            = module.rg.location
  sku                 = var.acr_sku
  tags                = local.tags
}
