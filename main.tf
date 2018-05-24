resource "google_compute_network" "main" {
  name        = "${var.organization_name}"
  description = "${var.organization_name} network"

  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "public" {
  name          = "public"
  ip_cidr_range = "10.22.50.0/24"
  network       = "${google_compute_network.main.self_link}"
}

resource "google_compute_subnetwork" "app" {
  name          = "app"
  ip_cidr_range = "10.22.60.0/24"
  network       = "${google_compute_network.main.self_link}"
}

resource "google_compute_subnetwork" "job" {
  name          = "job"
  ip_cidr_range = "10.22.70.0/24"
  network       = "${google_compute_network.main.self_link}"
}

resource "google_compute_subnetwork" "db" {
  name          = "db"
  ip_cidr_range = "10.22.80.0/24"
  network       = "${google_compute_network.main.self_link}"
}
