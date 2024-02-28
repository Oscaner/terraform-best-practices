variable "ports" {
  type = object({
    external = number
    internal = number
  })

  description = "The ports to expose"

  default = {
    external = 8080
    internal = 80
  }
}
