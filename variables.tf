variable "region" {
  description = "AWS Region to deploy Server"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Enter Instance Type"
  type        = string
  default     = "t2.small"
}

variable "common_tags" {
  description = "Common Tags to apply to all resources"
  type        = map(any)
  default = {
    Owner = "Mykyta Chabrovskykh"
    Name  = "PlayQ"
    Type  = "webserver"

  }
}
