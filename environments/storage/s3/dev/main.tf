module "s3_module" {
  source = "../../../../modules/storage/s3"
  bucket_name = var.bucket_name
  environment = var.environment
  
  
}

module "cdn_module" {
  source = "../../../../modules/storage/cdn"
 
  bucket_name = module.s3_module.bucket_name

  bucket_arn = module.s3_module.bucket_arn

  bucket_regional_domain_name = module.s3_module.bucket_regional_domain_name

  aliases = [

    var.frontend_domain

  ]
  acm_certificate_arn = data.terraform_remote_state.acm_global.outputs.certificate_arn

  environment = var.environment

}