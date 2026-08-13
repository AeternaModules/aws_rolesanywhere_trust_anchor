resource "aws_rolesanywhere_trust_anchor" "rolesanywhere_trust_anchors" {
  for_each = var.rolesanywhere_trust_anchors

  name     = each.value.name
  enabled  = each.value.enabled
  tags     = each.value.tags
  tags_all = each.value.tags_all

  source {
    source_data {
      acm_pca_arn           = each.value.source.source_data.acm_pca_arn
      x509_certificate_data = each.value.source.source_data.x509_certificate_data
    }
    source_type = each.value.source.source_type
  }

  dynamic "notification_settings" {
    for_each = each.value.notification_settings != null ? each.value.notification_settings : []
    content {
      channel   = notification_settings.value.channel
      enabled   = notification_settings.value.enabled
      event     = notification_settings.value.event
      threshold = notification_settings.value.threshold
    }
  }
}

