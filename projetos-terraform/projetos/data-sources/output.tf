output "id" {
  value = aws_instance.web.id
}

output "ami" {
  value = aws_instance.web.ami
}

output "arn" {
  value = aws_instance.web.arn
}



# │ Error: Reference to undeclared resource
# │ 
# │   on resource.tf line 3, in resource "aws_instance" "web":
# │    3:   ami                    = data.aws_ami.Ubuntu.id
# │ 
# │ A data resource "aws_ami" "Ubuntu" has not been declared in the root module.
# ╵
# ➜  data-sources git:(main) ✗ terraform plan
# ╷
# │ Error: Missing resource instance key
# │ 
# │   on output.tf line 2, in output "id":
# │    2:   value = aws_instance.web.id
# │ 
# │ Because aws_instance.web has "count" set, its attributes must be accessed on specific instances.
# │ 
# │ For example, to correlate with indices of a referring resource, use:
# │     aws_instance.web[count.index]
# ╵
# ╷
# │ Error: Missing resource instance key
# │ 
# │   on output.tf line 6, in output "ami":
# │    6:   value = aws_instance.web.ami
# │ 
# │ Because aws_instance.web has "count" set, its attributes must be accessed on specific instances.
# │ 
# │ For example, to correlate with indices of a referring resource, use:
# │     aws_instance.web[count.index]
# ╵
# ╷
# │ Error: Missing resource instance key
# │ 
# │   on output.tf line 10, in output "arn":
# │   10:   value = aws_instance.web.arn
# │ 
# │ Because aws_instance.web has "count" set, its attributes must be accessed on specific instances.
# │ 
# │ For example, to correlate with indices of a referring resource, use:
# │     aws_instance.web[count.index]
# ╵