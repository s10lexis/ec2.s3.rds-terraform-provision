output "instance_public_ip" {
  value = aws_instance.my_ec2.public_ip
}

output "instance_id" {
  value = aws_instance.my_ec2.id
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}

output "rds_endpoint" {
  value = aws_db_instance.my_rds.endpoint
}

output "rds_identifier" {
  value = aws_db_instance.my_rds.id
}