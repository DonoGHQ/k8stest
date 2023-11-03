resource "kubernetes_deployment_v1" "example" {
  metadata {
    name = "terraform-example"
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    template {
      spec {
        container {
          image = "nginx:1.21.6"
          name  = "example"
        }
      }
    }
  }
}
