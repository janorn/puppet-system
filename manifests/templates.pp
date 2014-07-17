class system::templates (
  $config   = undef,
) {
  if $config {
    create_resources('system::template', $config)
  }
  else {
    $hiera_config = hiera_hash('system::templates', undef)
    if $hiera_config {
      create_resources('system::template', $hiera_config)
    }
  }
}
