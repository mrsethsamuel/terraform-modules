variable "subnets" {
  description = "List of subnets to create"
  default = [
    {
      name                     = "subnet-1"
      cidr                     = "10.0.1.0/24"
      region                   = "us-west1"
      private_ip_google_access = true
      secondary_ip_ranges = [
        {
          name = "secondary-range-1"
          cidr = "10.0.2.0/24"
        },
        {
          name = "secondary-range-2"
          cidr = "10.0.3.0/24"
        }
      ]
    },
    {
      name                     = "subnet-2"
      cidr                     = "10.0.4.0/24"
      region                   = "us-east1"
      private_ip_google_access = false
      secondary_ip_ranges      = []
    }
  ]
}

variable "cluster_name" {
  description = "The name to assign to the resources."
  type        = string
  default     = "yv-development-cluster"
}


variable "vm_name" {
  type    = string
  default = "yv-test-vm" // Replace "your_vm_name" with the desired VM name
}


variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "The location/region where the resources will be created"
  type        = string
  default     = "eastus"
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
  default     = "my-vnet"

}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
