#
# Solaris specific code
#
class system::network::solaris () {
  # Check for solaris 11.
  case $::kernelrelease {
    '5.11': {  }
    default: {
      fail('This module only supports Solaris 11 at this moment.')
    }
  }
}
