output "string_result" {
  value       = random_string.random.result
  sensitive   = true
  description = "The generated random string"
}