provider "aws "{
    region ="us-east-1"

}
resource "aws_instance_type" "example"{
    instance_type="t2.micro"
    ami="ami-0c55b159cbfafe1f0"
    subnet_id="subnet-12345678"
}
output "instance_id" {
    value=aws_instance_type.example.id
}
resource "aws_s3_bucket" "s3_bucket"{
    bucket="my-unique-bucket-name-123456"
}
resource "aws_dynamodb_table" "dynamodb_table"{
    name="my-lock-table"
    billing_mode="PAY_PER_REQUEST"
    hash_key="LockID"
    attribute{
        name="LockID"
        type="S"
    }
}