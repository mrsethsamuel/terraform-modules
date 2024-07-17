output "kubernetes_endpoint" {
  sensitive = true
  value     = module.kubernetes_engine.endpoint
}

output "ca_certificate" {
  value = module.kubernetes_engine.ca_certificate
}

output "service_account" {
  description = "The default service account used for running nodes."
  value       = module.kubernetes_engine.service_account
}
