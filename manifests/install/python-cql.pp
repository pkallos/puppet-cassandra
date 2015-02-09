class cassandra::install::python-cql {

  $python_cql_name = $::osfamily ? {
      'Debian'    => 'python-cql',
      'RedHat'    => 'python26-cql',
      default     => $::operatingsystem ? {
        'Amazon' => 'python26-cql',
        default  => 'python-cql',
      }
  }

  package { $python_cql_name:
      ensure => installed,
  }

}
