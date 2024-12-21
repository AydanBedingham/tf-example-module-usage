variable "random_string_length" {
  type        = number
  default     = 50
  description = "Length of the random string"
  validation {
    condition     = var.random_string_length >= 10 && var.random_string_length <= 100
    error_message = "The random string length must be between 10 and 100."
  }
}