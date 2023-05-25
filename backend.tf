terraform {
  backend "s3" {
   Bucket = "mybucket-1410" 
   key = "ankita/ankita-tfstate"
   region = "us-east-1"
  }
}
