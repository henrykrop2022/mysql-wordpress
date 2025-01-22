# Create EC2 ( only after RDS is provisioned)
resource "aws_instance" "wordpressec2" {
  ami                    = data.aws_ami.linux2.id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.prod-subnet-public-1.id
  vpc_security_group_ids = ["${aws_security_group.ec2_allow_rule.id}"]
  user_data              = data.template_file.user_data.rendered
  key_name               = aws_key_pair.ec2_key.key_name
  tags = {
    Name = "Wordpress.web"
  }
  root_block_device {
    volume_size = var.root_volume_size # in GB 
  }
  # this will stop creating EC2 before RDS is provisioned
  depends_on = [aws_db_instance.wordpressdb]
 }