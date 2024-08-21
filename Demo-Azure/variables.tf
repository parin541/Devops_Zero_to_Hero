
# Project variables

variable "location" {
    type = string
    description = "Location of deployment"
    default = "West US"
}

variable "rsgname" {
    type = string
    description = "Resource group name"
    default = "MyFirstRG"
}

variable "stgactname" {
    type = string
    description = "StorageAccount name"
}