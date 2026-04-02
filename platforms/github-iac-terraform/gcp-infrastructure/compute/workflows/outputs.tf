output "topic_id" { value = google_pubsub_topic.events.id }
output "subscription_id" { value = google_pubsub_subscription.events_sub.id }