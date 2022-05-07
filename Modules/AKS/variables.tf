/*
This file contains all the variables defined for the terraform code
*/

# Variables for Kubernetes Cluster
variable "cluster_name" {
  type        = string
  description = "Configure the name of the Managed Kubernetes Cluster to create"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "Configure the resource group name"
}

variable "resource_group_location" {
  type        = string
  description = "Configure the resource group location"
}

variable "dns_prefix" {
  type        = string
  description = "Configure DNS prefix specified when creating the managed cluster"
  default     = "aks-dns"
}

variable "k8s_version" {
  type        = string
  description = "Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade)"
}

# Variables for Node pool
variable "node_pool_name" {
  type        = number
  description = "Configure the name which should be used for the default Kubernetes Node Pool"
  default     = "default"
}

variable "node_pool_count" {
  type        = string
  description = "Configure the initial number of nodes which should exist in this Node Pool (1 - 1000)"
  default     = ""
}

variable "node_pool_vm_size" {
  type        = string
  description = "Configure the size of the Virtual Machine"
  default     = "Standard_DS2_v2"
}

variable "node_pool_max_count" {
  type        = string
  description = "Configure the maximum number of nodes which should exist in this Node Pool (1 - 1000)"
  default     = "1"
}

variable "node_pool_min_count" {
  type        = string
  description = "Configure the minimum number of nodes which should exist in this Node Pool (1 - 1000)"
  default     = "1"
}

variable "k8s_type" {
  type        = string
  description = "Configure the type of Node Pool which should be created" # AvailabilitySet, VirtualMachineScaleSets
  default     = "VirtualMachineScaleSets"
}

variable "node_pool_osdisk_size" {
  type        = number
  description = "Configure the size of the OS Disk which should be used for each agent in the Node Pool"
  default     = "50"
}

variable "enable_auto_scaling" {
  type        = string
  description = "Configure whether Kubernetes Auto Scaler should be enabled for this Node Pool"
  default     = "false"
}

# Variables for Service Principal
variable "client_id" {
  type        = string
  description = "Azure App Registration Application (client) ID"
}

variable "client_secret" {
  type        = string
  description = "Azure App Registration Application secret"
}

# Variables for Network Profile
variable "network_plugin" {
  type        = string
  description = "Configure K8s network plugin to use for networking"
  default     = "kubenet"
}

variable "load_balancer_sku" {
  type        = string
  description = "Specifiey the SKU of the Load Balancer used for this Kubernetes Cluster"
  default     = "Standard"
}

# Variable for Tags
variable "env" {
  type        = string
  description = "Configure the name for environment"
}