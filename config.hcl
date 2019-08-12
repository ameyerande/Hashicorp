listener "tcp" {
  address = "0.0.0.0:8200"
  tls_disable = 1
}

api_addr =  "http://ec2-54-93-249-169.eu-central-1.compute.amazonaws.com:8200"
storage "file" {
    "path" = "/opt/vault-data"
    }

max_lease_ttl = "10h"
default_lease_ttl = "10h"
ui = true

seal "awskms" {
  region =  "eu-central-1"
  kms_key_id = "dc82f5cd-017d-4073-9880-4ecc22d26cab"
}
