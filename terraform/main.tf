terraform {
  backend "s3" {
    bucket = "terraform-state-demo-goweb"
    key    = "Terraform-State"
    region = "eu-west-3"
  }
}


module "s3" {
  source = "./modules/s3"
  bucket = var.bucket
}


output "website_url" {
  value = module.s3.website_url
}
