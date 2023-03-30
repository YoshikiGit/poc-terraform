module "module_sample1" {
  source   = "./modules"
  content  = "hello world!"
  filename = "hello.txt"
}

module "module_sample2" {
  source   = "./modules"
  filename = "hello.txt"
}

data "terraform_remote_state" "remote_state_sample" {
  backend = "local"
  config = {
    path = "./remote_state/terraform.tfstate"
  }
}

module "module_sample3" {
  source   = "./modules"
  filename = "${data.terraform_remote_state.remote_state_sample.outputs.output_content}.txt"
}
