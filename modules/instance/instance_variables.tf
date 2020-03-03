variable "region" { 
	default = "us-east-2" 
}
variable "vpc_id" {
	description = "VPC id"
}
variable "subnet_public_id" {
	description = "VPC public subnet id"
}
variable "security_group_ids" {
	description = "EC2 ssh security group"
	type = list(string)	
}
variable "key_pair_name" {
	description = "EC2 Key pair name"
	default = "newPublicKey"
}
variable "instance_ami" {
	description = "EC2 instance ami"
	default = "ami-0cf31d971a3ca20d6"
}
variable "instance_type" {
	description = "EC2 instance type"
	default = "t2.micro"
}
variable "environment_tag" { 
	description = "Environment tag"
	default = "dev" 
}