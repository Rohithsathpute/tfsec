resource "aws_security_group_rule" "my-rule" {
    type = "ingress"
    cidr_blocks = ["10.0.0.1/8"]
    description = "my rule"
}

resource "aws_alb_listener" "my-alb-listener" {
    port     = "443"
    protocol = "HTTPS"
}

resource "azurerm_managed_disk" "source" {
    encryption_settings {
        enabled = true
    }
}