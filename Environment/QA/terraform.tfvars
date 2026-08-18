rg-name = {
  rg1 = {
    name       = "acs-resource"
    location   = "east us"
    managed_by = "Infra-Team"
    tags = {
      environment = "QA"
    }

  }
}

strg-name = {
  strg1 = {
    name                     = "kddistrg56"
    resource_group_name      = "acs-resource"
    location                 = "east us"
    account_replication_type = "GRS"
    account_tier             = "Standard"
    access_tier              = "Cold"
    tags = {
      environment = "QA"
    }

  }
}