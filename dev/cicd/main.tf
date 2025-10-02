module "cicd" {
  source                = "git::https://github.com/mdefenders/terraform-argo-cd.git?ref=v1.0.0"
  argocd_chart_version  = var.argocd_chart_version
  appsets_chart_version = var.appsets_chart_version
  appset_name           = var.appset_name
  github_org            = var.github_org
  chart_repo            = var.chart_repo
  chart_name            = var.chart_name
  chart_version         = var.chart_version
  cluster_ocid          = data.terraform_remote_state.k8s.outputs.cluster-OCID
  region                = data.terraform_remote_state.infra.outputs.region
  deploy_appsets        = var.deploy_appsets
}
