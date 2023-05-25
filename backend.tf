terraform {
  backend "s3" {
   bucket = "mybucket-1410" 
   key = "ankita/ankita-tfstate"
   region = "us-east-1"
  }
}
