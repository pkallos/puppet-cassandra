class cassandra::install::java {

  $java_package_name = $::operatingsystem ? {
    'Amazon' => 'java-1.7.0-openjdk',
    default  => 'openjdk-7-jre',
  }

  if !defined (Package['java']) {
    package { 'java':
      ensure  => installed,
      name    => $java_package_name,
    }
  }

}
