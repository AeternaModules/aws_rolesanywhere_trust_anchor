output "rolesanywhere_trust_anchors_id" {
  description = "Map of id values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rolesanywhere_trust_anchors_arn" {
  description = "Map of arn values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "rolesanywhere_trust_anchors_enabled" {
  description = "Map of enabled values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.enabled if v.enabled != null }
}
output "rolesanywhere_trust_anchors_name" {
  description = "Map of name values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.name if v.name != null && length(v.name) > 0 }
}
output "rolesanywhere_trust_anchors_notification_settings" {
  description = "Map of notification_settings values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.notification_settings if v.notification_settings != null && length(v.notification_settings) > 0 }
}
output "rolesanywhere_trust_anchors_source" {
  description = "Map of source values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.source if v.source != null && length(v.source) > 0 }
}
output "rolesanywhere_trust_anchors_tags" {
  description = "Map of tags values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "rolesanywhere_trust_anchors_tags_all" {
  description = "Map of tags_all values across all rolesanywhere_trust_anchors, keyed the same as var.rolesanywhere_trust_anchors"
  value       = { for k, v in aws_rolesanywhere_trust_anchor.rolesanywhere_trust_anchors : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

