resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    namespace = "test-ns"
    labels = {
      test = "MyExampleApp"
    }
  }
  spec {
    template {
      spec {
        container {
          image = "nginx:sha@12312323235345346345sdff"
          name  = "example"
          image_pull_policy = "Always"
          security_context {
              read_only_root_filesystem = true
              capabilities {
                      drop = ["ALL"]
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
