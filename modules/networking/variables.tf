variable "environment" {
  description = "Environment name for deployment"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC network CIDR"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "public_subnets_cidr" {
  description = "Provider public subnets CIDR values"
  type        = map(any)
}

variable "public_subnets_name" {
  description = "Public Subnets Name"
  type        = list(any)
}

variable "private_subnets_cidr" {
  description = "Provide private subnets CIDR values"
  type        = map(any)
}

variable "private_subnets_name" {
  description = "Privet Subnets Name"
  type        = list(any)
}

variable "availability_zones" {
  description = "AZ in which all the resources will be deployed"
  type        = list(any)
}

variable "internet_gateway" {
  description = "Internet Gateway Name"
  type        = string

}

variable "nat_eip" {
  description = "NAT EIP name"
  type        = string
}

variable "nat_gateway" {
  description = "NAT Gateway Name"
  type        = string
}
