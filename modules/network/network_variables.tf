variable "region" { 
	default = "us-east-2" 
}
variable "cidr_block_range" { 
	description = "The CIDR block for the VPC" 
	default = "10.1.0.0/16" 
} 
variable "subnet1_cidr_block_range" { 
	description = "The CIDR block for public subnet of VPC" 
	default = "10.1.0.0/24" 
} 
variable "public_key_path" { 
	description = "Public key path" 
	default = "~/.ssh/terraform_ec2_key.pub" 
}
variable "availability_zone" { 
	default = "us-east-2a" 
} 
variable "environment_tag" { 
	description = "Environment tag"
	default = "dev" 
}