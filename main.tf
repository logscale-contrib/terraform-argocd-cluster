
resource "kubernetes_secret_v1" "argocd_manager_sa" {
  metadata {
    name      = var.name
    namespace = var.namespace
    labels = {
      "argocd.argoproj.io/secret-type" = "cluster"
      "cloud"                          = var.label_cloud
      "region"                         = var.label_region
      "clusterRole"                    = var.label_cluster_role
    }
  }
  type = "Opaque"
  data = {
    name   = var.name
    server = var.server
    config = jsonencode(
      {
        bearerToken = var.token
        tlsClientConfig = {
          insecure = var.insecure
          caData   = var.caData
        }
      }
    )
  }
}

# name: mycluster.com
#   server: https://mycluster.com
#   config: |
#     {
#       "bearerToken": "<authentication token>",
#       "tlsClientConfig": {
#         "insecure": false,
#         "caData": "<base64 encoded certificate>"
#       }
#     }
