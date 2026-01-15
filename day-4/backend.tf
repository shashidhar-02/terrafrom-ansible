terraform{
    backend "s3"{
        bucket="value"
        region="us-east-1"
        encrypt=true
        dynamodb_table ="terrafomrm_lock"
        key="day-4/terraform.tfstate"

    }
}