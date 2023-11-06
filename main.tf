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
        host_pid = "false"
        host_network = "false"
        host_ipc ="false"
        container {
          image = "nginx:1.2"
          name  = "example"
          image_pull_policy = "Always"
          security_context {
              privileged ="false"
              allow_privilege_escalation = false
              read_only_root_filesystem = true
              capabilities {
                      drop = ["ALL"]
                  }  
          }
          volumes {
              name = "docker-socket"
              host_path {
                  path = "/var/run/docker.sock"
                }
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
