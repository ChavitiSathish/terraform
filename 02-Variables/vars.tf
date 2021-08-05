variable "sample" {
  default = "Helloworld"
}

variable "sample2" {
  default = "Sathish"
}

output "Output" {
  value = var.sample
}

output "Output2" {
  value = "${var.sample} - From Terraform"
  //Variable if it is combined within some other string then we have to use ${} interpolation for variable accessing
}

