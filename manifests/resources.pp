class system::resources (
  $config   = undef,
  $schedule = $::system::schedule,
) {
  $defaults = {
    schedule   => $schedule,
  }
  if $config {
    create_resources(resources, $config, $defaults)
  }
  else {
    $hiera_config = hiera_hash('system::resources', undef)
    if $hiera_config {
      create_resources(resources, $hiera_config, $defaults)
    }
  }
}
