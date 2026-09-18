
variable "deployer_public_key" {
  description = "OpenSSH public key used for the deployer key pair"
  type        = string
  sensitive   = true
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.deployer_public_key
}











