variable "rolesanywhere_trust_anchors" {
  description = <<EOT
Map of rolesanywhere_trust_anchors, attributes below
Required:
    - name
    - source (block):
        - source_data (required, block):
            - acm_pca_arn (optional)
            - x509_certificate_data (optional)
        - source_type (required)
Optional:
    - enabled
    - tags
    - tags_all
    - notification_settings (block):
        - channel (optional)
        - enabled (optional)
        - event (optional)
        - threshold (optional)
EOT

  type = map(object({
    name     = string
    enabled  = optional(bool)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    source = object({
      source_data = object({
        acm_pca_arn           = optional(string)
        x509_certificate_data = optional(string)
      })
      source_type = string
    })
    notification_settings = optional(list(object({
      channel   = optional(string)
      enabled   = optional(bool)
      event     = optional(string)
      threshold = optional(number)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.rolesanywhere_trust_anchors : (
        v.notification_settings == null || (length(v.notification_settings) <= 50)
      )
    ])
    error_message = "Each notification_settings list must contain at most 50 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

