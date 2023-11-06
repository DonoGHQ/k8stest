resource "kubernetes_deployment" "example" {
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
          image = "nginx:1.2"
          name  = "example"
          image_pull_policy = "Always"
          security_context {
          privileged ="false"
          }
          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }
        }
          readiness_probe {
            http_get {
              path = "/"
              port = 8080
                  }
              }
        resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

      }
    }
  }
}
}
