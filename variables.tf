variable "name" {
    type = string
    description = "(optional) describe your variable"
}

variable "namespace" {
    type = string
    default = "argocd"
    description = "(optional) describe your variable"
}

variable "server" {
    type = string
    description = "(optional) describe your variable"
}

variable "token" {
    type = string
    description = "(optional) describe your variable"
}

variable "insecure" {
    type = bool
    default = false
    description = "(optional) describe your variable"
}

variable "caData" {
    type = string
    description = "(optional) describe your variable"
}