output "number_result" {
  value       = random_integer.random.result
  sensitive   = true
  description = "The generated random number"
}