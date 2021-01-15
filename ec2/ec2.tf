resource "aws_instance" "konec2g" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = aws_key_pair.key_pair_ec2.key_name
  source_dest_check      = false
}


resource "aws_key_pair" "key_pair_ec2" {
  key_name   = "keypairday08"
  public_key = file(var.key_name)
}