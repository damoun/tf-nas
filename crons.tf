resource "random_integer" "cronjob_minute" {
  min = 1
  max = 59
}

resource "truenas_cronjob" "acme" {
  enabled     = true
  user        = "root"
  command     = "/root/.acme.sh/acme.sh --cron --home '/root/.acme.sh'"
  description = "Created by terraform"
  schedule {
    dom    = "*"
    dow    = "*"
    hour   = "0"
    minute = random_integer.cronjob_minute.result
    month  = "*"
  }
  hide_stdout = true
}
