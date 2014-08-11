node default {
  include zfs

  Exec{
    path => '/usr/bin:/bin:/usr/sbin:/sbin',
  }
}





#sudo -i

# sudo apt-get update
# apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
#
# install rbenv
# curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
#
# rbenv install 2.1.2
# rbenv global 2.1.2
#
#
#
#
#
#sudo -i
#
#apt-add-repository --yes ppa:zfs-native/stable
#apt-get update
#apt-get install debootstrap spl-dkms zfs-dkms ubuntu-zfs
#
#modprobe zfs
#dmesg | grep ZFS:
##ZFS: Loaded module v0.6.3-2~trusty, ZFS pool version 5000, ZFS filesystem version 5
#
#sudo zpool create locker raidz /dev/dsk/by-id/XXX /dev/dsk/by-id/XXX /dev/dsk/by-id/XXXX /dev/dsk/by-id/XXXX
#sudo zfs set mountpoint=/locker locker

