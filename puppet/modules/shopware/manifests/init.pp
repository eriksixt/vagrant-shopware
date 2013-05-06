class shopware::install {
  
  exec { 'create-database':
    unless  => "/usr/bin/mysql -u root -pvagrant shopware",
    command => "/usr/bin/mysql -u root -pvagrant --execute=\"create database shopware\""
  }
  
  exec { 'create-user':
    unless  => "/usr/bin/mysql -u shopware -pshopware",
    command => "/usr/bin/mysql -u root -pvagrant --execute=\"GRANT ALL PRIVILEGES ON shopware.* TO 'shopware'@'localhost' IDENTIFIED BY 'shopware'\""
  }

  file { "/vagrant/shopware-4":
    ensure  => directory,
    recurse => true, 
    purge   => true 
  }

  exec { 'git-shopware':
    command => '/usr/bin/git clone git://github.com/ShopwareAG/shopware-4.git .',
    cwd     => '/vagrant/shopware-4'
  }

  file { '/vagrant/shopware-4/config.php':
    source  => '/vagrant/shopware-4/config.php.dist', 
    require => Exec['git-shopware']
  }

}