resource "aws_sqs_queue_policy" "this" {
  count = module.this.enabled ? 1 : 0

  queue_url = var.queue_url
  policy    = var.policy
}
