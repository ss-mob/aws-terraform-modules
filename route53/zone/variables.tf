variable "create" {
  description = "Whether to create Route53 zone"
  type        = bool
  default     = true
}

variable "zone" {
  description = "Map of Route53 zone parameters"
  type        = any
  default     = {}
}
