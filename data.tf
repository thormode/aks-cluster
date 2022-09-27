# Current subscription
data "azurerm_subscription" "current" {}

# Current client
data "azuread_client_config" "current" {}
