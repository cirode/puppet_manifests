class zfs::repository {
  include apt
  package {'python-software-properties':
    ensure => present,
  }

  apt::ppa { 'ppa:zfs-native/stable':
    require => Package['python-software-properties'],
  }
}