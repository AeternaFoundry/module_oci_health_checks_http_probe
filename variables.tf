variable "health_checks_http_probes" {
  description = <<EOT
Map of health_checks_http_probes, attributes below
Required:
    - compartment_id
    - protocol
    - targets
Optional:
    - headers
    - method
    - path
    - port
    - timeout_in_seconds
    - vantage_point_names
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id      = string
    protocol            = string
    targets             = list(string)
    headers             = optional(map(string))
    method              = optional(string)
    path                = optional(string)
    port                = optional(number)
    timeout_in_seconds  = optional(number)
    vantage_point_names = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

