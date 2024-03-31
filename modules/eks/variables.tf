variable "env" {
  description = "Environment Name"
  type        = string
}

variable "eks_version" {
  description = "Kubernetes master version"
  type        = string
}

variable "eks_name" {
  description = "Cluster Name"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}
