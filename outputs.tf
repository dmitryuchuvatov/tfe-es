output "replicated_dashboard" {
  description = "URL for Replicated dashboard"
  value       = "https://${local.fqdn}:8800"
}

output "tfe_login" {
  description = "URL for TFE login"
  value       = "https://${local.fqdn}"
}

output "ssh_login" {
  description = "SSH login command"
  value       = "ssh -i tfesshkey.pem ubuntu@${local.fqdn}"
}
