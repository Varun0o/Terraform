variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of EC2 instance"
  default     = "t2.micro"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "key_name" {
  description = "The SSH key name for EC2 instance"
  type        = string
}
