class system::resources (
  $config   = undef,
) {
  if $config {
    create_resources(resources, $config)
  }
  else {
    $hiera_config = hiera_hash('system::resources', undef)
    if $hiera_config {
      create_resources(resources, $hiera_config)
    }
  }
}
