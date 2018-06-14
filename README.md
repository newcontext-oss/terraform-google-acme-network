# terraform-google-acme-network

Terraform module for building out networks on Google Cloud Services

It builds a VPC network and subnetworks

## Use

Call it as a module from another Terraform repository.

```sh
module "network" {
  source = "terraform-google-acme-network"

  organization_name = "Your Organization Name Here"
}
```

## Testing

To build, validate and then destroy run these commands below:

```sh
bundle exec kitchen converge
bundle exec kitchen verify
bundle exec kitchen destroy
```

### Prerequisites

- Ruby 2.2 or greater
- Terraform >= 0.10.2, < 0.12
- gcloud command line utility (https://cloud.google.com/sdk/)
- Google Cloud Project with a service account
- Download service account credentials to: `credentials.json`
- Create a local Kitchen configuration file: `kitchen.local.yml`, add this content:

```yml
---
driver:
  variables:
    gcloud_project: <project-id>
```
