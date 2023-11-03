resource "kubernetes_pod_security_policy" "example" {
  metadata {
    name = "terraform-example"
  }
  spec {
        privileged = false
        required_drop_capabilities = ["ALL"]
      }
}
