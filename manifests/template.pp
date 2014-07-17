define system::template(
  $template,
  $owner    = 'root',
  $group    = 'root',
  $mode     = undef,
) {
  file { $title:
    owner    => $owner,
    group    => $group,
    mode     => $mode,
    content  => template($template),
  }
}
