provider "aws" { 
	region = var.region
}

variable "region" { 
	default = "us-east-2" 
} 
variable "environment_tag" { 
	description = "Environment tag"
	default = "dev" 
}