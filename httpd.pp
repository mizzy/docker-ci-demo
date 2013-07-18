package { 'httpd': ensure => installed }

service { 'httpd':
  enable  => true,
  ensure  => running,
  require => Package['httpd'],
}

file { '/etc/httpd/conf/httpd.conf':
  source  => 'httpd.conf',
  require => Package['httpd'],
}
