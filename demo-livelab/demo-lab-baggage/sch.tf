## This configuration was generated by terraform-provider-oci

resource oci_sch_service_connector export_nosql_demos_2 {
  compartment_id = var.compartment_ocid
  defined_tags = {
  }
  #description = <<Optional value not found in discovery>>
  display_name = "nosql_demos"
  freeform_tags = {
  }
  source {
    cursor {
      kind = "LATEST"
    }
    kind = "streaming"
    #log_sources = <<Optional value not found in discovery>>
    stream_id = oci_streaming_stream.export_nosql_demos_3.id
  }
  state = "ACTIVE"
  target {
    #batch_rollover_size_in_mbs = <<Optional value not found in discovery>>
    #batch_rollover_time_in_ms = <<Optional value not found in discovery>>
    #bucket = <<Optional value not found in discovery>>
    #compartment_id = <<Optional value not found in discovery>>
    #enable_formatted_messaging = <<Optional value not found in discovery>>
    function_id = oci_functions_function.export_load-target.id
    kind        = "functions"
    #log_group_id = <<Optional value not found in discovery>>
    #metric = <<Optional value not found in discovery>>
    #metric_namespace = <<Optional value not found in discovery>>
    #namespace = <<Optional value not found in discovery>>
    #object_name_prefix = <<Optional value not found in discovery>>
    #stream_id = <<Optional value not found in discovery>>
    #topic_id = <<Optional value not found in discovery>>
  }
}

