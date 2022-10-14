resource "local_file" "ansible" {
    content  = <<-EOT
    
    ${aws_instance.ubuntu1.public_ip}
    ${aws_instance.redhat1.public_ip}
    ${aws_instance.suse1.public_ip}
    ${aws_instance.amazon1.public_ip}

    EOT
    filename = "${path.module}/inventory"
}
