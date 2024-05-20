variable "vpc-cidr" {
    type = string
    description = "This the firstvpc cidr range"
    default = "10.1.0.0/16"
  
}

variable "subnet" {
    type = list(string) 
    description = "this is  subnets"
    default = [ "10.1.1.0/24","10.1.2.0/24" ]
}

#variable "secondarysubnet" {
#    type = string 
#    description = "this is private subnet"
#    default = "10.1.2.0/24"
#}

variable "az" {
    type = list(string)
    description = "list of AZ"
    default = [ "ap-south-1a","ap-south-1b" ]
}

variable "tagging" {
    type = list(string)
    description = "these are tags"
    default = [ "publicsubnet","privatesubnet" ]
  
}