output "instance_eip" { 
	value = aws_eip.myInstanceEip.public_ip
}