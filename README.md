# Modules

## Overview
Terraform configuration demonstrating the usage of child modules.
- Providers (and provider version) defined in parent module `./providers.tf`.
- Variables defined in parent module `./variables.tf`.
- Variable default values overridden using variable definition file `./terraform.tfvars`.
    - Optional: Can use alternative varaible definition file instead `alternate_terraform.tfvars`
- Parent module outputs used to surface-up outputs from child modules `./outputs.tf`.

### Child modules:
- awesome-string-generator (`./modules/awesome-string-generator`):
    - Generates a string using the `random` providers `random_string` resource.
    - Generates output `string_result`
- awesome-number-generator (`./modules/awesome-number-generator`):
    - Generates a string using the `random` providers `random_integer` resource.
    - Generates output `number_result`

## Deployment

### Initialize the Terraform working directory
Installs the necessary provider plugins, sets up the backend (if specified), and prepares the environment for running Terraform commands.
```
terraform init
```

### Format Terraform configuration files
Formats Terraform configuration files according to Terraform's style conventions. The -recursive=true flag applies the formatting to all .tf files recursively in the current directory and subdirectories.
```
terraform fmt -recursive=true
```

### Validate Terraform configuration files
Validates the configuration files to ensure that they are syntactically correct and consistent with the defined Terraform provider.
```
terraform validate
```

### Generate execution plan
Generates and shows an execution plan, which outlines the changes Terraform will make to the infrastructure. The -out="myplan" flag saves the plan to a file (myplan) for later use during terraform apply.
```
terraform plan -out="myplan"
```
NOTE: You can also use the alternate tfvariables by specifying `terraform plan -var-file="alternate_terraform.tfvars" -out="myplan"`

### Apply the plan
Applies the changes specified in the myplan execution plan, which was previously generated with terraform plan -out="myplan".
```
terraform apply "myplan"
```

## Delete Deployment
Destroy all the infrastructure resources managed by Terraform, effectively removing them from your environment.
```
terraform destroy
```

## Regenerate random variables

### Regenerate string
```
terraform apply -replace="module.string_generator.random_string.random" -auto-approve
```

### Regenerate number
```
terraform apply -replace="module.string_generator.random_number.random" -auto-approve
```
