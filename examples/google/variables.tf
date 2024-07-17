variable "project_id" {
  description = "The project ID to host the cluster in"
  type        = string
  default     = "sample-project-id"
}

variable "project_name" {
  description = "The name to assign to the Project."
  type        = string
  default     = "sample-project"
}

variable "network_name" {
  description = "The VPC network to host the cluster in"
  type        = string
  default     = "sample-network"
}

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
  default     = "sample-cluster"
}

variable "ip_range_services" {
  description = "The secondary ip range to use for services"
  type        = string
  default     = "europe-west3-yv-dev-services"
}

variable "ip_range_pods" {
  description = "The secondary ip range to use for pods"
  type        = string
  default     = "europe-west3-yv-dev-pods"

}

variable "regional" {
  description = "Whether is a regional cluster"
  type        = string
  default     = "true"
}
variable "region" {
  description = "The region to host the cluster in"
  type        = string
  default     = "europe-west3"
}

variable "enable_binary_authorization" {
  description = "Enable BinAuthZ Admission controller"
  default     = false
}

variable "compute_engine_service_account" {
  description = "Service account to associate to the nodes in the cluster"
  default     = false
}


variable "vm_name" {
  type    = string
  default = "sample-test-vm" // Replace "your_vm_name" with the desired VM name
}

variable "tags" {
  type    = list(string)
  default = [] // Add the desired tags
}

variable "metadata" {
  type    = map(string)
  default = {} // Add the desired metadata
}
variable "machine_type" {
  type    = string
  default = "e2-medium" // Replace "your_machine_type" with the desired machine type

}

variable "project_roles" {
  default = [
    "roles/compute.admin",
    "roles/compute.instanceAdmin",
    "roles/compute.networkAdmin",
    "roles/compute.securityAdmin",
    "roles/compute.storageAdmin",
    "roles/iam.serviceAccountUser",
    "roles/iam.serviceAccountAdmin",
    "roles/resourcemanager.projectIamAdmin",
    "roles/resourcemanager.projectIamViewer",
    "roles/resourcemanager.projectIamEditor",
  "roles/iam.serviceAccountKeyAdmin"]
}


variable "vm-sa-name" {
  type    = list(string)
  default = ["test"]
}
