output "public_ip_address" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "private_key" {
  value     = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}