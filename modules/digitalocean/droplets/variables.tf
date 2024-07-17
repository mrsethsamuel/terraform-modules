variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}

variable "droplets" {
  description = "List of droplet configurations"
  type = list(object({
    name     = string
    region   = string
    size     = string
    image    = string
    ssh_keys = list(string)
    tags     = list(string)
  }))
  default = [
    {
      name     = "example-droplet-1"
      region   = "nyc3"
      size     = "s-1vcpu-1gb"
      image    = "ubuntu-20-04-x64"
      ssh_keys = []
      tags     = []
    },
    {
      name     = "example-droplet-2"
      region   = "sfo2"
      size     = "s-1vcpu-1gb"
      image    = "ubuntu-20-04-x64"
      ssh_keys = []
      tags     = []
    }
  ]
}
