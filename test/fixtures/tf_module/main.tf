provider "google" {
  version     = "~> 1.0"
}

module "network" {
  organization_name = "test-org"
  source            = "../../.."
}
