resource "aws_sqs_queue" "terraform_queue" {
  name = "terraform-example-queue"
  # fifo_queue                  = true  FIFO SQS Queues can not be subscribed to standard SNS topics
  # content_based_deduplication = true content-based deduplication can only be set for FIFO queue
}

# output "queue_arn" {
#   value = aws_sqs_queue.terraform_queue.arn
# }
