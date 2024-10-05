variable "controls" {
  type = map(string)
  default = {
    "Preventive" = "arn:aws:controltower:us-east-1::control/PreventiveGuardrail"
    "Detective"  = "arn:aws:controltower:us-east-1::control/DetectiveGuardrail"
    "Proactive"  = "arn:aws:controltower:us-east-1::control/ProactiveGuardrail"
  }
}
