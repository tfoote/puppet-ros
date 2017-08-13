# == Class: ros::install
#
# A class to install the packages for ROS
#
class ros::install {
  include ros::params


  apt::source { 'ros-latest':
    location => $ros::params::repo_url,
    #release => 'stable',
    repos    => $ros::params::repo_component,
    key      => {
      id     => $ros::params::repo_key,
      server => $ros::params::repo_key_url
      },
    include  => { src => true }
  }

  package { $ros::params::ros_base_package:
    ensure  => 'installed',
    require => [ Apt::Source['ros-latest'],
                 Class['apt::update']
                 ]
  }

  package { 'python-rosdep':
    ensure  => 'installed',
    require => [ Apt::Source['ros-latest'],
                 Class['apt::update']
                 ]
  }

  package { 'python-rosinstall':
    ensure  => 'installed',
    require => [ Apt::Source['ros-latest'],
                 Class['apt::update']
                 ]
  }

  package { 'python-rosdistro':
    ensure  => 'latest',
    require => [ Apt::Source['ros-latest'],
                 Class['apt::update']
                 ]
  }

}
