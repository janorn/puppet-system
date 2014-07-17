class system::groups (
  $config   = undef,
  $real     = false,
) {
  $defaults = {
    ensure   => 'present',
  }
  if $real {
    $type = 'group'
  }
  else {
    $type = '@group'
  }
  if $config {
    system_create_resources($type, $config, $defaults)
  }
  else {
    $hiera_config = hiera_hash('system::groups', undef)
    if $hiera_config {
      system_create_resources($type, $hiera_config, $defaults)
    }
  }
}
