output "mysql_access_mode" {
  value = module.mysql.access_mode
}
output "mysql_admin_username" {
  value     = module.mysql.admin_username
  sensitive = true
}
output "mysql_data_storage_size_in_gb" {
  value = module.mysql.data_storage_size_in_gb
}
output "mysql_database_mode" {
  value = module.mysql.database_mode
}
output "mysql_display_name" {
  value = module.mysql.display_name
}
output "mysql_endpoints" {
  value = module.mysql.endpoints
}
output "mysql_id" {
  value = module.mysql.id
}
output "mysql_ip_address" {
  value = module.mysql.ip_address
}
output "mysql_version" {
  value = module.mysql.mysql_version
}
output "mysql_port" {
  value = module.mysql.port
}
output "mysql_data_storage" {
  value = module.mysql.data_storage
}
output "mysql_secret_ocid" {
  value = module.mysql.secret_ocid
}
