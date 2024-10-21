variable "ami-id" {
    type = string
    default = "ami-0866a3c8686eaeeba"
}

variable "instance-type" {
    type = string
    default = "t3.micro"
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "web"
        Name = "web"
    }
}

variable "sg_name" {
    default = "allow_all"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}