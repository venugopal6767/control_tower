output "control_tower_id" {
  value = aws_controltower_control.guardrails.*.id
}
