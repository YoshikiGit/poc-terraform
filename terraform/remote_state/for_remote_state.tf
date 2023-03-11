locals {
  name = "remote_state_sample"
}

resource "local_file" "remote_state_sample" {
  content  = local.name
  filename = "${local.name}.txt"
}

output "output_content" {
  value = local.name
}
