output "load_balancer_name" {
  value       = azurerm_lb.lb.name
  description = "The name of the load balancer."
}