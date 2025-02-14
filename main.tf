
module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags               = var.tags
}

module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = var.vnet_name
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  address_space       = ["10.0.0.0/16"]
  subnets = [
    { name = "subnet1", address_prefix = "10.0.1.0/24" },
    { name = "subnet2", address_prefix = "10.0.2.0/24" }
  ]

}

module "storage_account" {
  source               = "./modules/storageaccount"
  storageacc_name      = "${replace(var.base_appname, "-", "")}${var.env_name}sa"
  resource_group_name  = module.resource_group.resource_group_name
  location = var.location
  tags                 = var.tags
}

module "adf" {
  source               = "./modules/adf"
  adf_name             = "${var.base_appname}-${var.env_name}-adf"
  resource_group_name  = module.resource_group.resource_group_name
  location             = "australiaeast"

}


module "databricks" {
  source         = "./modules/databricks"
  rg_name        = module.resource_group.resource_group_name
  location       = var.location
  workspace_name = "${var.base_appname}-adb"
  sku            = "standard"
  depends_on =   [module.vnet]
  #vnet_id        = module.vnet.vnet_id
  #subnet_id      = module.vnet.subnet_id
}

module "keyvault" {
  source                = "./modules/keyvault"
  key_vault_name        = "${var.base_appname}-${var.env_name}-kvvv"
  location              = "australiaeast"
  resource_group_name   = module.resource_group.resource_group_name
  tenant_id             = var.tenant_id
 #object_id             = var.object_id
  depends_on            = [module.adf]
  #tags                  = var.tags
}
