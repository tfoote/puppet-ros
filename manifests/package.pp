define ros::package ($ensure='installed', $require=[]) {
  include ros
  include ros::params
  package { "ros-${ros::params::ros_version}-${title}":
    ensure  => $ensure,
    require => [Class['ros']] + $require
  }
}
