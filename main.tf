module "string_generator" {
  source               = "./modules/awesome-string-generator"
  random_string_length = var.my_string_length
}

module "number_generator" {
  source            = "./modules/awesome-number-generator"
  random_number_min = var.my_number_min
  random_number_max = var.my_number_max
}