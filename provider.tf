provider "aws" {
  region = "${var.region}"
  
}

terraform{
  backend"s3" {
    bucket = "javahomegandeu-tf-1212" #Defaulbuketname
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraformstate" #default table name #LockID the key should be for the table should not change
    
  }
}

