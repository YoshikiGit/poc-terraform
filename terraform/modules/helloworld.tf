variable "content" {
  default = "no-content"
}

variable "filename" {
}

resource "local_file" "helloworld" {
  content  = var.content
  filename = var.filename
}
