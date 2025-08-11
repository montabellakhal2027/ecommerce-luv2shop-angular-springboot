provider "kubernetes" {
 config_path ="~/.kube/config"
}
provider "helm" {
kubernetes = {
 config_path ="~/.kube/config"
}
}
resource "helm_release" "my_app" {
  name             = "my-app"
  chart            = "./my-app-chart"
  namespace        = "default"
  create_namespace = true

  set = [
    {
      name  = "images.frontend.repository"
      value = "monta2027/frontend"
    },
    {
      name  = "images.frontend.tag"
      value = "latest"
    },
    {
      name  = "images.backend.repository"
      value = "monta2027/backend"
    },
    {
      name  = "images.backend.tag"
      value = "latest"
    }
  ]
}

