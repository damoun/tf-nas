variable "truenas_api_key" {
  description = "API key for the TrueNAS server"
}

variable "truenas_base_url" {
  type        = string
  description = "Base url for the TrueNAS server"
}

variable "truenas_debug" {
  type        = string
  description = "Enable debug from the TrueNAS provider"
}

variable "truenas_pool" {
  type        = string
  description = "Name of the pool to use on the TrueNAS server"
}
