resource "aws_instance" "my_ec2" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = var.availability_zone
  key_name          = var.key_name

  tags = {
    Name = var.instance_name
  }
}
resource "aws_s3_bucket" "my_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}

resource "aws_db_instance" "my_rds" {
  allocated_storage   = 20
  engine              = "mysql"
  engine_version      = "8.0"
  instance_class      = "db.t3.micro"
  username            = var.db_username
  password            = var.db_password
  db_name             = var.db_name
  skip_final_snapshot = true
  publicly_accessible = false

  tags = {
    Name = var.rds_instance_name
  }
}