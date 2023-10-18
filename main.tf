# provider "google" {
#   project = "tfgcptraining"
#   region = "us-east4"
#   zone = "us-east4-a"
  
# }

variable "var_vpcname" {
  type = list
  default = ["varpc1", "varpc2", "varpc3"]
}

resource "google_compute_network" "dep1" {
  count = length(var.var_vpcname)
  name = var.var_vpcname[count.index]
  routing_mode = "GLOBAL"
  auto_create_subnetworks = false

}