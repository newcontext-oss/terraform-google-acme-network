output "database_subnetwork_name" {
  description = "The name of the database subnetwork."
  value       = "${google_compute_subnetwork.db.name}"
}

output "name" {
  description = "The name of the network."
  value       = "${google_compute_network.main.name}"
}
