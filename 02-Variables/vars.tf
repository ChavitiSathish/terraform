variable "sample" {
  default = "Helloworld"
}

output "Output" {
  value = var.sample
}

output "Output2" {
  value = "${var.sample} - From Terraform"
  //Variable if it is combined within some other string then we have to use ${} interpolation for variable accessing
}

//Here Input will be asked at terminal end

variable "sample2" {}

output "output" {
  value = var.sample2
}


//Data Types in Terraform

# String Data type
variable "string" {
  default = "HELLO World"
}

output "Stringoutput" {
  value = var.string
}

# Number Data Type
variable "number" {
  default = "10"
}

output "Numberoutput" {
  value = var.number
}

#Boolean Data Type
variable "boolean" {
  default = "true"
}

output "Booleanoutput" {
  value = var.boolean
}