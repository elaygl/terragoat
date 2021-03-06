
data "aws_caller_identity" "current" {}

variable "company_name" {
  default = "acme"
}

variable "environment" {
  default = "dev2"
}

locals {
  resource_prefix = {
    value = "${data.aws_caller_identity.current.account_id}-${var.company_name}-${var.environment}"
  }
}



variable "profile" {
  default = "dev2"
}

variable "region" {
  default = "us-eastush-2"
}

variable "availability_zone" {
  type    = "string"
  default = "us-eastush-2a"
}

variable "availability_zone2" {
  type    = "string"
  default = "us-eastush-2b"
}


variable ami {
  type    = "string"
  default = "ami-09a5b0b7edf08843d"
}

variable "dbname" {
  type        = "string"
  description = "Name of the Database"
  default     = "db12221"
}

variable "password" {
  type        = "string"
  description = "Database password"
  default     = "Aa1234322131Bb"
}

variable "neptune-dbname" {
  type        = "string"
  description = "Name of the Neptune graph database"
  default     = "neptune33db1"
}
