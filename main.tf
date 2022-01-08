data "ncloud_server_images" "images" { 
    filter { 
        name = "product_name" 
        values = ["centos-7.3-64"] 
    } 
    output_file = "image.json" 
}
 
output "list_image" { 
    value = { 
        for image in data.ncloud_server_images.images.server_images: image.id => image.product_name 
    } 
}