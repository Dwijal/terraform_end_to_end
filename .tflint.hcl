plugin "azurerm" {
    enabled = true
    version = "0.19.0"
    source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

# rule "terraform_typed_variables" {
#   enabled = false
# }

rule "terraform_required_version" {
  enabled = false
}

rule "terraform_required_providers" {
  enabled = false
}