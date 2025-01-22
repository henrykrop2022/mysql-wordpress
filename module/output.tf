output "IP" {
  value = aws_instance.wordpressec2.public_ip
}
output "RDS-Endpoint" {
  value = aws_db_instance.wordpressdb.endpoint
}
output "INFO" {
  value = "AWS Resources and Wordpress has been provisioned. Go to http://${aws_instance.wordpressec2.public_ip}"
}