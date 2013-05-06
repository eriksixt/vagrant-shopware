class php5::install {

  package { 'php5': ensure => present }
  package { 'php5-mysql': ensure => present } 
  package { 'php5-gd': ensure => present }
  package { 'php5-curl': ensure => present }
  package { 'libapache2-mod-php5': ensure => present }

  file {'/etc/php5/conf.d/upload_limits.ini':
    ensure  => present,
    owner   => 'root', 
    group   => 'root', 
    mode    => '0444',
    content => "upload_max_filesize = 6M\n"
  }

}