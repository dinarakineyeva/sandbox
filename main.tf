#######################################
########## MONGO DB ATLAS #############
#######################################
module "atlas_cluster" {
  source           = "../../child_module"
  # atlas_org_id = var.atlas_org_id
  project_id_mongo = var.mongo_project_id

  # Private link
  gcp_project = var.gcp_project_id
  gcp_region  = var.gcp_region

  # Atlas cluster
  cloud_provider               = var.cloud_provider
  cluster_name                 = var.mongo_cluster_name
  mongodbversion               = var.mongo_cluster_version
  cluster_type                 = var.mongo_cluster_type
  cloud_backup                 = var.cloud_backup
  auto_scaling_disk_gb_enabled = var.autoscaling
  provider_instance_size_name  = var.mongo_cluster_size
  ## replication_specs for the cluster
  num_shards      = var.num_shards
  region_name     = var.mongo_cluster_region
  electable_nodes = var.electable_nodes
  priority        = var.priority
  read_only_nodes = var.read_only_nodes

  # Database user
  db_username        = var.db_username
  db_password        = var.db_password
  auth_database_name = var.auth_database_name
  ## roles
  db_role_name  = var.db_role_name
  database_name = var.database_name
  ## labels
  db_key   = var.db_key
  db_value = var.db_value

  google_compute_address      = var.google_compute_address
  google_compute_address_type = var.google_compute_address_type
  network_name = var.network_name
  subnet_name = var.subnet_name
  compute_address_name = var.compute_address_name
}
