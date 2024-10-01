resource "aws_instance" "i-instanceID_text2motion_server2" {
  ami                         = "ami-0d52899d00bf6b7e4"
  associate_public_ip_address = "true"
  availability_zone           = "eu-west-1a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = "2"
    threads_per_core = "1"
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = "false"
  disable_api_termination = "false"
  ebs_optimized           = "true"

  enclave_options {
    enabled = "false"
  }

  get_password_data                    = "false"
  hibernation                          = "false"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t4g.small"
  ipv6_address_count                   = "0"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = "2"
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = "false"
  placement_partition_number = "0"

  private_dns_name_options {
    enable_resource_name_dns_a_record    = "true"
    enable_resource_name_dns_aaaa_record = "false"
    hostname_type                        = "ip-name"
  }

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    volume_size           = "12"
    volume_type           = "gp2"
  }

  source_dest_check = "true"

  tags = {
    Name = "text2motion_server2"
  }

  tags_all = {
    Name = "text2motion_server2"
  }

  tenancy                = "default"
}
