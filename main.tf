resource "aws_db_event_subscription" "default" {
  name_prefix = "rds-event-sub"
  sns_topic   = var.sns_topic_arn

  source_type = "db-instance"
  source_ids  = [var.db_instance_id]

  event_categories = [
    "failover",
    "failure",
    "low storage",
    "maintenance",
    "notification",
    "recovery",
  ]
}

