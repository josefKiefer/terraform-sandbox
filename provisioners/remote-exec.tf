resource "aws_instance" "provisioned_ec2" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"
  key_name      = "remote-exec provisioner"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./remote-exec provisioner.pem")
      host        = self.public_ip
    }
  }
}
