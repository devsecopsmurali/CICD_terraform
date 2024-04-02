variable "cidr_value" {
  description = "vpc cidr value"
  type = string
  default = ""

}

variable "tenancy" {
  description = "tenancy value"
  type = string
  default = ""
}

variable "region" {
  description = "region value"
  type = string
  default = ""
}


variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}