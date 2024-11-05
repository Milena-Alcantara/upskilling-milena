variable "aws_region" {
  description = "The region AWS"
  type        = string
  default     = "us-east-1"
}

variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "ec2-example" 
}

variable "instance_description" {
  description = "The description tag of the EC2 instance"
  type        = string
  default     = "I'm in the clouds" 
}

variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
  default     = "t3.micro"  
}

variable "instance_ami_id" {
  description = "The AMI id of the EC2 instance"
  type        = string
  default     = "ami-0ddc798b3f1a5117e"  
}