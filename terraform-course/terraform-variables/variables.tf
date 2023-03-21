variable "filename" {
       default = "/home/ubuntu/terraform-course/terraform-variables/devops-automated.txt"
 
}

variable "content" {
      default = "This is auto generated from a variable"
}

variable "devops_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "this is cool content 1"
"content2" = "this is cooler content 2"
}
}
variable "file_list" {
type = list
default = ["/home/ubuntu/terraform-course/terraform-variables/file_1.txt", "/home/ubuntu/terraform-course/terraform-variables/file_2.txt"]
}

