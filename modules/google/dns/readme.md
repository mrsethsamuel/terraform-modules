# Google Cloud DNS Module

This module creates a Google Cloud DNS managed zone and allows adding DNS records to it.

## Usage

```hcl
module "dns" {
  source = "../../terraform-modules/dns"

  zone_name = "example-zone"
  dns_name  = "example.com."
  description = "Managed DNS zone for example.com"
  labels = {
    environment = "production"
    team        = "devops"
  }
  dns_records = {
    "example_com_a" = {
      name    = "example.com."
      type    = "A"
      ttl     = 300
      rrdatas = ["192.0.2.1"]
    },
    "www_example_com_a" = {
      name    = "www.example.com."
      type    = "A"
      ttl     = 300
      rrdatas = ["192.0.2.2"]
    }
  }
}
```
