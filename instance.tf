resource "aws_instance" "web" {
   ami           = "ami-01a6e31ac994bbc09"
   instance_type = "t2.micro"
   key_name      =      "${aws_key_pair.eu-west-2-key.key_name}"
   security_groups = ["${aws_security_group.allow_tls.name}"]
   tags = {
     Name = "HelloWorld"
   }
}