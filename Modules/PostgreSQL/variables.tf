/*
This file contains all the variables defined for the terraform code
*/

# Variables for Azure Database for PostgreSQL servers
variable "sql_name" {
  type        = string
  description = "PostgreSQL Server Name"
  default     = "postgreSQL-svr-${random_string.random_suffix.result}" # uses random 3 character string
}

variable "sku_name" {
  type        = string
  description = "PostgreSQL SKU Name"
  default     = "B_Gen5_1" # Basic Gen5
}

variable "storage_mb" {
  type        = string
  description = "PostgreSQL Storage in MB"
  default     = "5120"
}

variable "geo_redundant_backup_enabled" {
  type        = string
  description = "Configure geo redundant backups"
  default     = "false"
}

variable "auto_grow_enabled" {
  type        = string
  description = "Configure database to auto grow"
  default     = "true"
}

variable "backup_retention_days" {
  type        = number
  description = "Configure backup retention days"
  default     = 1
}

variable "admin_login" {
  type        = string
  description = "Login to authenticate to PostgreSQL Server"
}

variable "administrator_login_password" {
  type        = string
  description = "Password to authenticate to PostgreSQL Server"
}

variable "server_version" {
  type        = string
  description = "PostgreSQL Server version to deploy"
  default     = "11"
}

variable "ssl_enforcement_enabled" {
  type        = string
  description = "Configure enforcement of TLS connections"
  default     = "true"
}

variable "ssl_minimal_tls_version_enforced" {
  type        = string
  description = "Configure minimum TLS version enforce"
  default     = "TLS1_2"
}

variable "public_network_access_enabled" {
  type        = string
  description = "Configure public network access"
  default     = "true"
}

variable "sql_db_name" {
  type        = string
  description = "PostgreSQL database name"
  default     = "PostgreSQL-DB--${random_string.random_suffix.result}" # uses random 3 character string
}

variable "db_charset" {
  type        = string
  description = "Configure database character set"
  default     = "UTF8"
}

variable "db_collation" {
  type        = string
  description = "Configure database collation"
  default     = "English_United States.1252"
}

# Variables for Service Principal and Tenant
variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure App Registration Application (client) ID"
}

variable "client_secret" {
  type        = string
  description = "Azure App Registration Application secret"
}

variable "tenant_id" {
  type        = string
  description = "Azure App Registration Application Direcotry (tenant) ID"
}