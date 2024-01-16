terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATCKAOM6VP652RNVL"
  secret_key = "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"
}

module "sns" {
  source   = "./modules/sns"
  snsnames = var.snsname
}
module "sqs" {
  source  = "./modules/sqs"
  sqsname = var.sqsname

}

# SNS Queue Resource which is import from AWS Console
resource "aws_sqs_queue" "mohit-queue-console" {
}
output "sqs-arn" {
  value = aws_sqs_queue.mohit-queue-console
}

# SNS Topic Resource which is imported form AWS console
resource "aws_sns_topic" "mohit-snstopic-console" {
}
output "sns-arn" {
  value = aws_sns_topic.mohit-snstopic-console
}





