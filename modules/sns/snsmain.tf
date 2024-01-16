resource "aws_sns_topic" "sns-topic-1" {
  name = "${var.snsnames}-sns-topic-1.fifo"
  fifo_topic = true
}
resource "aws_sns_topic" "sns-topic-2" {
  name = "${var.snsnames}-sns-topic-2.fifo"
  fifo_topic = true
}
resource "aws_sns_topic" "sns-topic-3" {
  name = "${var.snsnames}-sns-topic-3"
  fifo_topic = false
}