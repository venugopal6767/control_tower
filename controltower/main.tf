provider "aws" {
  region = "us-east-1"  # Adjust the region as needed
}

data "aws_organizations_organization" "org" {}

resource "aws_controltower_control" "guardrails" {
  # Example guardrail configuration
  for_each = var.controls

  control_identifier = each.key
  target_identifier  = data.aws_organizations_organization.org.root.id
}
