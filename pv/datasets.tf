resource "truenas_dataset" "namespace" {
  name     = var.namespace
  pool     = var.pool
  parent   = var.parent
  comments = "Created by terraform"
}

resource "truenas_dataset" "volume" {
  for_each = var.volumes
  name     = each.value
  pool     = var.pool
  parent   = "${var.parent}/${var.namespace}"
  comments = "Created by terraform"
}
