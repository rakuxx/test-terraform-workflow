variable "content_value" {
  type    = string
  default = "Hello, world!"
}

variable "file_name" {
  type    = string
  default = "hello_world.txt"
}

resource "local_file" "hello_world" {
  content  = var.content_value
  filename = "${path.module}/${var.file_name}"
}
