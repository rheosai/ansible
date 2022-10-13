resource "local_file" "ansible" {
    content  = <<-EOT
    [nodes]
    ubuntu1 ansible_ssh_host=${aws_instance.ubuntu1.public_ip}
    redhat1 ansible_ssh_host=${aws_instance.redhat1.public_ip}
    suse1 ansible_ssh_host=${aws_instance.suse1.public_ip}
    amazon1 ansible_ssh_host=${aws_instance.amazon1.public_ip}

    EOT
    filename = "${path.module}/inventory"
}
