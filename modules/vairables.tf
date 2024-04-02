variable "cidr_value" {
  description = "vpc cidr value"
  type = string
}

variable "tenancy" {
  description = "tenancy value"
  type = string
}

variable "region" {
  description = "region value"
  type = string
}

variable "aws_secret_key" {
  description = "aws_secret_key value"
  type = string
}

variable "aws_access_key" {
  description = "aws_access_key value"
  type = string
}

variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}