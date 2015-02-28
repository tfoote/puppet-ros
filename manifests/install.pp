class ros::install {
  include ros::params


  apt::source { 'ros-latest':
    location   => $ros::params::repo_url,
    #release    => 'stable',
    repos      => $ros::params::repo_component,
    key        => $ros::params::repo_key,
    key_source => $ros::params::repo_key_url,
    include_src  => true,
  }

  package { $ros::params::ros_base_package:
    ensure => 'installed',
    require => Apt::Source ['ros-latest'],
  }

  package { 'python-rosdep':
    ensure => 'installed',
    require => Apt::Source ['ros-latest'],
  }

  package { 'python-rosinstall':
    ensure => 'installed',
    require => Apt::Source ['ros-latest'],
  }

  package { 'python-rosdistro':
    ensure => 'latest',
    require => Apt::Source ['ros-latest'],
  }

}
