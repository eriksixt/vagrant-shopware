class apache2::install {

  define apache::loadmodule () {
    exec { "/usr/sbin/a2enmod ${name}" :
        unless  => '/bin/readlink -e /etc/apache2/mods-enabled/${name}.load',
        notify  => Service['apache2'],
        require => Package['apache2']
    }
  }  
  
  package { 'apache2': 
    ensure => present
  }
  
  apache::loadmodule { "rewrite": }

  file { '/etc/apache2/sites-available':
    ensure => directory
  }

  file { '/etc/apache2/sites-available/shopware':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/apache2/shopware.conf',
    notify => Service['apache2']
  }

  service { 'apache2':
    ensure  => running,
    require => Package['apache2']
  }

  exec { '/usr/sbin/a2ensite shopware' :
    notify  => Service['apache2'],
    require => Package['apache2']
  }

}