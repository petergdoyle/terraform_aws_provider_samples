terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

/* provider "aws" {
    access_key = "ASIAYK4FJ7QBUSLFW5FX"
    secret_key = "6XuF/Q0RHgrDMA7fR6X6nLJh1sq4O9heG1/vO7HG"
    token = "IQoJb3JpZ2luX2VjEG0aCXVzLWVhc3QtMSJHMEUCIDxrLiXRz+Q/2kXhv3NbQMs1h6lwrhbuMBsOAubtvMXlAiEAlQL93BBDmLlV7cyA/1RU1+4NVw4ELD8Mj5VuHMwcxCMq+gII9v//////////ARAAGgw1NzMxMjA4Mzg2NTkiDBud6U1bSyIaH30hyCrOAoK2ia6/EgR3Du/RCVZUTusjpcU7xFS2/9x8CHZU0N7GNaRwbOT2J5rvX5NaVWD8Z8glVeeowuBpVND7+jmtqGXqxCp1KuIo75jmHhPLLapTox2d93Q+ihgl6lq8gMHt9W/TN5a4yf2YUqHe/R/Gxr12/kC9vriz7cVN83bcMDXIvms2953cZClU1ErOtchwv21U62WuwQtjJQTIIq6riiFT0oY7XB08x/cFMEtGb4FLmm5khDpaUA3j82Zkfo6RjN1okzNlEQMGi4vVfEgFTXTTlQPPovvwjmNj72WZ7D97JmbRHMOk0wJ7lvMFkOWLVVxYxp3QQh65Ve+xko3I9dPRgkqE2apdk1ZhohoPib4Q09KgTy6yNlipHKQ7G+rfrdJQRB6EUcb8vG8r/QGFrINKuEZZsEtWHnjZrsx1oePmJEhiQtkvq8E3pEeUBM8whr+qnwY6pwEo2kNiugcJGadwXs8cqdB4yMyDPOq6fhfcuVZDR37Ey4kFtiFGW4eB0yjhdBenYSoMdsgiGbygk1Kib1oiARShvZjRUOvPN4d82FAJ2AntSq4QYN4z3WJXpWedtAdxRXUIGtgO/311l0eQmRp0pAS/kVFW/xTH2rHG3WJYxtDkjNGphFJLm2JZ2h1N4PO75/axe/eu+IKnW8EIiQ11gSZOaavLOR+WZA=="
    region = "us-east-1"
} */

resource "aws_s3_bucket" "b" {
  bucket = "pdoyle-tf-test-bucket-z"
  tags = {
    Name        = "pdoyle"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

