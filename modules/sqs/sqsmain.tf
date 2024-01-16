resource "aws_sqs_queue" "queue-1" {
  name = "${var.sqsname}-queue-1.fifo"
  fifo_queue = true
}
resource "aws_sqs_queue" "queue-2" {
  name = "${var.sqsname}-queue-2.fifo"
    fifo_queue = true
}
resource "aws_sqs_queue" "queue-3" {
  name = "${var.sqsname}-queue-3"
    fifo_queue = false
}
