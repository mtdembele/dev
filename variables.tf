variable "aws_region" {
  description = "The AWS region to for the s3 bucket"
  type        = string
  default     = "us-east-1"

}
/*
variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 2

} */

variable "instance_type" {
  description = "The instance type for the EC2 instances"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instances"
  type        = string
  default     = "ami-0e1e769742d1cfb49"


}
