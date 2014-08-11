class zfs::packages {
  package{ 'debootstrap':
    ensure => latest,
  }
  package{ 'spl-dkms':
    ensure => latest,
  }
  package{ 'zfs-dkms':
    ensure => latest,
  }
  package {'ubuntu-zfs':
    ensure => latest,
  }
}