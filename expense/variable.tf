variable "instance_names"{
    type = list(string)
    default = ["db","frontend","backend"]
}

variable "image_id" {
  type        = string #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID" #optional
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}


#sg varibles
variable "sg_name" {
    type = string
    default = "expense-sg"
}

variable "sg_description" {
    type = string
    default = "creating security group for expense"
}

variable "ssh_port" {
    type = number
    default = 22
}

variable "protocol" {
    type = string
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

#r53 variables
variable "zone_id" {
    default = "Z00153981XQ64LXGGBLCD"
}

variable "domain_name" {
    default = "gandu.tech"
}