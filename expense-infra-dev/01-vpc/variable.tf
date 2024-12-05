variable "project_name"{
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common_tags"{
    default = {
        project = "expense"
        environment = "dev"
        terraform = "true"

    }
}

variable "public_subnet_cidrs"{
    default = ["10.110.10.0/24","10.110.11.0/24"]
}

variable "private_subnet_cidrs"{
    default = ["10.110.20.0/24","10.110.21.0/24"]
}

variable "database_subnet_cidrs"{
    default = ["10.110.30.0/24","10.110.31.0/24"]
}
