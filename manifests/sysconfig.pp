class system::sysconfig (
  $config   = {},
) {
  class { '::system::sysconfig::clock':
    config   => $config['clock'],
  }

  class { '::system::sysconfig::i18n':
    config   => $config['i18n'],
  }

  class { '::system::sysconfig::keyboard':
    config   => $config['keyboard'],
  }

  class { '::system::sysconfig::puppetdashboard':
    config   => $config['puppetdashboard'],
  }

  class { '::system::sysconfig::puppetmaster':
    config   => $config['puppetmaster'],
  }

  class { '::system::sysconfig::puppet':
    config   => $config['puppet'],
  }

  class { '::system::sysconfig::selinux':
    config   => $config['selinux'],
  }
}
