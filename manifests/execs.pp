class system::execs (
  $config   = undef,
) {
  if $config {
    create_resources(exec, $config)
  }
  else {
    $hiera_config = hiera_hash('system::execs', undef)
    if $hiera_config {
      create_resources(exec, $hiera_config)
    }
  }
}
