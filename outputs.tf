output "db_user" {
  value = module.atlas_cluster.user1
}

output "name" {
  value = module.atlas_cluster.connection_string
}
