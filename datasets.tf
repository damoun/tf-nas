resource "truenas_dataset" "backup" {
  name     = "backup"
  pool     = var.truenas_pool
  comments = "Created by terraform"
}

resource "truenas_dataset" "time_machine" {
  name     = "time-machine"
  pool     = var.truenas_pool
  parent   = truenas_dataset.backup.name
  comments = "Created by terraform"
}

resource "truenas_dataset" "k8s" {
  name     = "kubernetes"
  pool     = var.truenas_pool
  comments = "Created by terraform"
}

resource "truenas_dataset" "persistent_volume" {
  name     = "persistent-volume"
  pool     = var.truenas_pool
  parent   = truenas_dataset.k8s.name
  comments = "Created by terraform"
}

resource "truenas_dataset" "private" {
  name     = "private"
  pool     = var.truenas_pool
  comments = "Created by terraform"
}

resource "truenas_dataset" "shared" {
  name     = "shared"
  pool     = var.truenas_pool
  comments = "Created by terraform"
}

resource "truenas_dataset" "video" {
  name     = "video"
  pool     = var.truenas_pool
  comments = "Created by terraform"
}

resource "truenas_dataset" "movie" {
  name     = "movie"
  pool     = var.truenas_pool
  parent   = truenas_dataset.video.name
  comments = "Created by terraform"
}

resource "truenas_dataset" "tv_show" {
  name     = "tv-show"
  pool     = var.truenas_pool
  parent   = truenas_dataset.video.name
  comments = "Created by terraform"
}
