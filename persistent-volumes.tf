
module "home_automation" {
  source    = "./pv"
  namespace = "home-automation"
  pool      = var.truenas_pool
  volumes = [
    "hass-config"
  ]
  parent = truenas_dataset.persistent_volume.name
}

module "torrent" {
  source    = "./pv"
  namespace = "torrent"
  pool      = var.truenas_pool
  volumes = [
    "transmission-config",
    "transmission-downloads"
  ]
  parent = truenas_dataset.persistent_volume.name
}