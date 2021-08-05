variable "sample" {
  default = "Helloworld"
}

variable "sample2" {
  default = "Sathish"
}

output "Output" {
  value = var.sample2
}