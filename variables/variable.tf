variable "ami_identity" {
    type = string
    default= "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default= "t3.micro"
}


variable "tags"{
    type = map 
    default= {
      Name= "variable_demo"
      project="roboshop"
      terraform="true"
      env="dev"
    }
}