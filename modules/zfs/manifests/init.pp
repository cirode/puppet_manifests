class zfs{

  case $::operatingsystem {
    ubuntu : {

      include kmod

      class{'zfs::repository': }

      package{ 'debootstrap':
        ensure => latest,
        require => Class['zfs::repository'],
      }
      package{ 'spl-dkms':
        ensure => latest,
        require => Class['zfs::repository'],
      }
      package{ 'zfs-dkms':
        ensure => latest,
        require => Class['zfs::repository'],
      }
      package {'ubuntu-zfs':
        ensure => latest,
        require => Package['zfs-dkms'],
      }

      exec{ 'load-zfs-module':
        command => "modprobe zfs",
        unless => "cat /proc/modules | grep '^zfs'",
        require => Package['ubuntu-zfs'],
      }

    }
    default : {
      fail("zfs is not currently supported on ${::operatingsystem}")
    }
  }

}