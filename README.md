# Terraform Modules Usage Guide

This repository contains Terraform modules to provision infrastructure on Google Cloud Platform (GCP), Microsoft Azure, and DigitalOcean. Each module is designed to be reusable and customizable based on your specific requirements.

## Prerequisites

Before you begin, ensure you have the following installed:

- Terraform (version >= 1.9.2)
- Provider plugins (Google Cloud, Azure, DigitalOcean)
- API credentials and access keys for respective cloud providers

## Usage

Follow these steps to use the modules:

### Google Cloud Platform (GCP)

1. **Module: `google_compute_instance`**

   - **Description**: Creates a Google Compute Engine instance.
   - **Usage**:
     ```hcl
     module "compute_instance" {
       source      = "./modules/google/compute_instance"
       name        = "example-instance"
       machine_type = "n1-standard-1"
       zone        = "us-central1-a"
       // Add more variables as needed
     }
     ```

2. **Module: `google_storage_bucket`**

   - **Description**: Creates a Google Cloud Storage bucket.
   - **Usage**:
     ```hcl
     module "storage_bucket" {
       source      = "./modules/google/storage_bucket"
       name        = "example-bucket"
       location    = "us-central1"
       // Add more variables as needed
     }
     ```

### Microsoft Azure

1. **Module: `azure_virtual_machine`**

   - **Description**: Deploys a virtual machine in Microsoft Azure.
   - **Usage**:
     ```hcl
     module "virtual_machine" {
       source              = "./modules/azure/virtual_machine"
       vm_name             = "example-vm"
       resource_group_name = "example-resources"
       location            = "East US"
       // Add more variables as needed
     }
     ```

2. **Module: `azure_storage_account`**

   - **Description**: Creates an Azure Storage Account.
   - **Usage**:
     ```hcl
     module "storage_account" {
       source              = "./modules/azure/storage_account"
       storage_account_name = "examplestorage"
       resource_group_name  = "example-resources"
       location             = "East US"
       // Add more variables as needed
     }
     ```

### DigitalOcean

1. **Module: `digitalocean_droplet`**

   - **Description**: Provisions a Droplet (VM) on DigitalOcean.
   - **Usage**:
     ```hcl
     module "droplet" {
       source  = "./modules/digitalocean/droplet"
       name    = "example-droplet"
       region  = "nyc3"
       size    = "s-1vcpu-1gb"
       // Add more variables as needed
     }
     ```

2. **Module: `digitalocean_loadbalancer`**

   - **Description**: Sets up a Load Balancer on DigitalOcean.
   - **Usage**:
     ```hcl
     module "loadbalancer" {
       source  = "./modules/digitalocean/loadbalancer"
       name    = "example-loadbalancer"
       region  = "nyc3"
       // Add more variables as needed
     }
     ```

## Customization

Each module supports various input variables that you can customize according to your project requirements. Refer to the respective module's `variables.tf` file for a comprehensive list of configurable options.



