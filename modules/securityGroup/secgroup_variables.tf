variable "region" { 
	default = "us-east-2" 
}
variable "vpc_id" {
	description = "VPC id"
}

variable "environment_tag" { 
	description = "Environment tag"
	default = "dev" 
}