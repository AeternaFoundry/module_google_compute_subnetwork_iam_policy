resource "google_compute_subnetwork_iam_policy" "compute_subnetwork_iam_policies" {
  for_each = var.compute_subnetwork_iam_policies

  policy_data = each.value.policy_data
  subnetwork  = each.value.subnetwork
  project     = each.value.project
  region      = each.value.region
}

