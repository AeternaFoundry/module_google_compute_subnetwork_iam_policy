variable "compute_subnetwork_iam_policies" {
  description = <<EOT
Map of compute_subnetwork_iam_policies, attributes below
Required:
    - policy_data
    - subnetwork
Optional:
    - project
    - region
EOT

  type = map(object({
    policy_data = string
    subnetwork  = string
    project     = optional(string)
    region      = optional(string)
  }))
}

