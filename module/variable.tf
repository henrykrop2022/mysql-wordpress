variable "database_name" {
  type = string
  default = "wordpress"
}
variable "database_password" {
  type = string
  default = "wordpress"
}
variable "database_user" {
  type = string
  default = "wordpress"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "AZ1" {
  type = string
  default = "us-east-1a"
}
variable "AZ2" {
  type = string
  default = "us-east-1b"
}
variable "AZ3" {
  type = string
  default = "us-east-1c"
}
variable "VPC_cidr" {
  type = string
  default = "192.168.0.0/16"
}
variable "subnet1_cidr" {
  type = string
  default = "192.168.0.0/18"
}
variable "subnet2_cidr" {
  type = string
  default = "192.168.64.0/18"
}
variable "subnet3_cidr" {
  type = string
  default = "192.168.128.0/18"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}
variable "instance_class" {
  type = string
  default = "db.t3.micro"
}
variable "root_volume_size" {
  type = string
  default = "10"
}