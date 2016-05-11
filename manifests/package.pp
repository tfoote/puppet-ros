define ros::package ($ensure='installed', $require=[]) {
  require ros
  require ros::params
  package { "ros-${ros::params::ros_version}-${title}":
    ensure  => $ensure,
    require => [Class['ros']] + $require
  }
}
