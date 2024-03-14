module "rgroup" {
  source = "./rgroup-9693"
  name   = "rgroup-9693"
  location = "Central Canada"
}

module "vmlinux" {
  source = "./vmlinux-9693"
  resource_group_name   = "HUMBER_CAPSTONE"
  location = "Central Canada"
  availability_set_id = 1
  storage_account_uri = "as1storage"
  admin_password = "pass123"
  admin_username = "admin"
  network_interface_ids = 1
  vm_names = "vm-lin"
  // Pass in required variables such as resource_group_name, location, etc.
  // Assume we pass in network_interface_ids and other necessary information
}

module "vmwindows" {
  source = "./vmwindows-9693"
  vm_count = 4
  vm_name = "vm-win"
  admin_password = "pas123"
  availability_set_id = 1
  admin_username = "admin"
  subnet_id = 1
  storage_account_uri = "as1storage"
  location = "Central Canada"
  resource_group_name   = "HUMBER_CAPSTONE"
  vm_name_prefix = "vm-win"
  network_interface_ids = 1
  network_interface_id = 1
  // Pass in required variables
}

module "datadisk" {
  source = "./datadisk-9693"
  resource_group_name   = "HUMBER_CAPSTONE"
  location = "Central Canada"
  vm_ids = 3
}

module "network" {
  source = "./network-9693"
  resource_group_name   = "HUMBER_CAPSTONE"
  location = "Central Canada"
}

module "loadbalancer" {
  source = "./loadbalancer-9693"
  // Pass in required variables
}

module "database" {
  source = "./database-9693"
  administrator_login = "admin"
  administrator_password = "pass123"
  resource_group_name   = "HUMBER_CAPSTONE"
  location = "Canada Central"
  db_name = "db"
  // Pass in required variables
}
