resource "local_file" "ansible" {
    content  = <<-EOT
    [nodes]
    ubuntu1 ansible_ssh_host=${aws_instance.ubuntu1.public_ip}
    redhat1 ansible_ssh_host=${aws_instance.redhat1.public_ip}
    suse1 ansible_ssh_host=${aws_instance.suse1.public_ip}
    amazon1 ansible_ssh_host=${aws_instance.amazon1.public_ip}

    [all:vars]
    ansible_user=ubuntu
    ansible_become=yes
    ansible_become_method=sudo
    host_key_checking=False
    ansible_ssh_private_key_file=~/.ssh/id_rsa
    EOT
    filename = "${path.module}/inventory"
}
