variable "rg-name" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = map(string)
  }))

}


variable "strg-name" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_replication_type = string
    account_tier             = string
    access_tier              = string
    tags                     = map(string)
  }))

}