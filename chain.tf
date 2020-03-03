module "networkModule" { 
	source = "./modules/network" 
	region = var.region
	environment_tag = var.environment_tag
} 

module "securityGroupModule" {
	source = "./modules/securityGroup" 
	region = var.region
	vpc_id = module.networkModule.vpc_id
	environment_tag = var.environment_tag
}

module "instanceModule" { 
	source = "./modules/instance" 
	region = var.region
	vpc_id = module.networkModule.vpc_id
	subnet_public_id = module.networkModule.public_subnets[0]
	key_pair_name = module.networkModule.ec2keyName
	security_group_ids = [module.securityGroupModule.sg_22, 
		module.securityGroupModule.sg_80] 
	environment_tag = var.environment_tag
}
module "provisionerModule" {
	source = "./modules/provisioner"
	public_ip = module.instanceModule.instance_eip
}