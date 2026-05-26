variable "queue_url" {
  description = "URL of the SQS queue"
  type        = string
  validation {
    condition     = length(var.queue_url) > 0
    error_message = "queue_url must not be empty."
  }
}

variable "policy" {
  description = "JSON policy document"
  type        = string
  validation {
    condition     = length(var.policy) > 0
    error_message = "policy must not be empty."
  }
}
