# Variables
variable "public_ip" {
	description = "Public IP for EC2 instance"
}
variable "ssh_port" {
	description = "The port the EC2 Instance should listen on for SSH requests."
	default = 22
}
variable "ssh_user" {
	description = "SSH user name to use for remote exec connections,"
	default = "ec2-user"
}