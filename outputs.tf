output "name" {
  description = "The name of the network."
  value       = "${google_compute_network.main.name}"
}
