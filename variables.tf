variable "account" {
  description = "Provide Aviatrix Access Account Name"
  default = "****"
}

variable "key_pair_name" {
  description = "Provide EC2 key pair name"
  default = "****"  
}
variable "region" {
  default = "****"
}

variable "enable_firewall_bootstrap" {
  default = true
}

variable "bootstrap_bucket_name" {
  description = "Provide bootstrap S3 bucket name, use when enable_firewall_bootstrap set to true"
  default = "****"
}

variable "bootstrap_iam_role" {
  description = "Provide bootstrap iam role, use when enable_firewall_bootstrap set to true"
  default = "****"
}

variable "vpc_name" {
  default     = "GWLBe-spoke"
  description = "Provide VPC name"
}

variable "vpc_cidr" {
  default     = "10.100.0.0/24"
  description = "Provide VPC CIDR range, smallest subnet in AWS is /28. We need at least 2x /28 for Aviatrix Spoke Gateway, 2x /28 for GWLB endpoint, 2x /28 for public NLB, so the minium size should be /25"
}

variable "availability_zones_count" {
  default     = 2
  description = "Define how many availability zones will be used to create subnets, this number should not exceed total number of AZs in the region, or error would occur"

}

variable "tags" {
  default = {
    StartGroup = "GWLB"
  }
}



