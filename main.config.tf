module "config" {
  source = "./modules/config-templating"

  starter_locations               = var.starter_locations
  starter_locations_short         = var.starter_locations_short
  subscription_id_connectivity    = local.subscription_ids_effective["connectivity"]
  subscription_id_identity        = local.subscription_ids_effective["identity"]
  subscription_id_management      = local.subscription_ids_effective["management"]
  subscription_id_security        = local.subscription_ids_effective["security"]
  root_parent_management_group_id = var.root_parent_management_group_id

  custom_replacements = var.custom_replacements

  inputs = {
    connectivity_resource_groups    = var.connectivity_resource_groups
    hub_and_spoke_networks_settings = var.hub_and_spoke_networks_settings
    hub_virtual_networks            = var.hub_virtual_networks
    virtual_wan_settings            = var.virtual_wan_settings
    virtual_hubs                    = var.virtual_hubs
    management_resource_settings    = var.management_resource_settings
    management_group_settings       = var.management_group_settings
    tags                            = var.tags
    connectivity_tags               = var.connectivity_tags
  }

  enable_telemetry = var.enable_telemetry
}
