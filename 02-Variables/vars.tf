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

output "DatatypeOutputs" {
  value = "String : ${var.string}, Number : ${var.number}, Boolean : ${var.boolean}"
}

//Creating List and Map Variables

variable "Training" {
  default = "Devops"
}

variable "Trainings" {
  default = ["Devops", "Terraform", "AWS", "Ansible"]
}

variable "TrainingDetails" {
  default = {
    Devops = "5 A.M"
    Terraform = "6 A.M"
    AWS = "7 A.M"
    Ansible = "8 A.M"
  }
}

output "FirstTraining" {
  value = var.Trainings[0]
}

output "SecondTraining" {
  value = var.Trainings[1]
}

output "FourthTraining" {
  value = var.Trainings[3]
}

output "TrainingTimings" {
  value = "Aws-Timings : ${var.TrainingDetails["AWS"]}"
}

