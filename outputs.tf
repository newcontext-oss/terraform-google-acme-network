output "app_subnetwork_name" {
  description = "The name of the application subnetwork."
  value       = "${google_compute_subnetwork.app.name}"
}

output "database_subnetwork_name" {
  description = "The name of the database subnetwork."
  value       = "${google_compute_subnetwork.db.name}"
}

output "job_subnetwork_name" {
  description = "The name of the job subnetwork."
  value       = "${google_compute_subnetwork.job.name}"
}

output "name" {
  description = "The name of the network."
  value       = "${google_compute_network.main.name}"
}
