resource "null_resource" "my_provisioner" { 
	// linux 
	connection { 
		type = "ssh" 
		host = var.public_ip
		user = var.ssh_user
		password = "" 
		port = var.ssh_port
		private_key = file("terraform_ec2_key")
	}
	
	provisioner "remote-exec" { 
		inline = [
			// Install docker
			"sudo yum update -y",
			"sudo yum install -y docker",
			"sudo service docker start",
			//Create project directory in ec2 instance
			"sudo mkdir /home/Imagine",
			"sudo chmod 777 /home/Imagine",
		] 
	}
	
	//Copy dotnet webapp to the server
	provisioner "file" {
		source = "E:/dotnet-docker/"
		destination = "/home/Imagine"
	}
	
	//Pull docker aspnetapp image and run the container
	provisioner "remote-exec" {
		inline = [
			"cd /home/Imagine/samples/aspnetapp/",
			"sudo docker build --pull -t aspnetapp .",
			"sudo docker run --name imagine --rm -it -p 80:5000 aspnetapp",
		]
	}
}