variable "sample" {
  default = "Helloworld"
}

variable "sample2" {
  default = "Sathish"
}

output "sample" {
  value = var.sample2
}