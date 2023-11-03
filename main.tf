resource "kubernetes_pod_security_policy" "example" {
  metadata {
    name = "terraform-example"
  }
  spec {
        privileged = false
        run_as_user {
                rule = "MustRunAs"
                range {
                  min = 0
                  max = 65535
        }
      }
    }
}
