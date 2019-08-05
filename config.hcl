listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

api_addr =  "http://ec2-18-184-60-84.eu-central-1.compute.amazonaws.com:8200"
storage "file" {
    "path" = "/opt/vault-data"
    }

max_lease_ttl = "10h"
default_lease_ttl = "10h"
ui = true

seal "awskms" {
  region =  "eu-central-1"
  kms_key_id = "e0eccdfc-66b4-42cc-beb6-2ae1da89818d"
}
