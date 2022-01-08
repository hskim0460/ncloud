

resource "ncloud_subnet" "public_subnet" {
    vpc_no         = ncloud_vpc.test_vpc.id
    subnet         = "10.10.1.0/24"
    zone           = "KR-2"
    network_acl_no = ncloud_vpc.test_vpc.default_network_acl_no
    subnet_type    = "PUBLIC" // PUBLIC(Public) | PRIVATE(Private)
  // below fields is optional
    name           = "public-subnet-01"
    usage_type     = "GEN"    // GEN(General) | LOADB(For load balancer)
}