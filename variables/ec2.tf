resource "aws_instance" "example" {
  ami           = var.ami_identity
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_server_sg_tf.id]

  tags = var.tags
}

resource "aws_security_group" "web_server_sg_tf" {
  name        = "web-server-sg-tf_AWS"
  description = "Allow HTTPS to web server"

  ingress {
    description = "HTTPS ingress"
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}