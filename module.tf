module "hello" {
  count     = length(var.VALUES)
  source    = "./module"
  VALUE     = element(var.VALUES, count.index)
}

variable "VALUES" {
  default = ["google.com", "yahoo.com"]
}
