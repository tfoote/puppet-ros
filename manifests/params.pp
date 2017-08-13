# == Class: ros::params
#
# A class to load parameters for the ros class
#
class ros::params {

  # TODO better parameterization
  # potential parameters:
  #  testing vs main
  #  python3

  case $::operatingsystem {
    'Ubuntu': {
      $repo_key         = '421C365BD9FF1F717815A3895523BAEEB01FA116'
      $repo_key_url     = 'hkp://ha.pool.sks-keyservers.net'
      $repo_url         = 'http://packages.ros.org/ros/ubuntu'
      $repo_component   = 'main'

      # By default, install the latest available ROS release for
      # the platform.
      case $::operatingsystemrelease {
        10.04: {
          $ros_version     = 'fuerte'
        }
        12.04: {
          $ros_version     = 'hydro'
        }
        12.10: {
          $ros_version     = 'hydro'
        }
        13.04: {
          $ros_version     = 'hydro'
        }
        13.10: {
          $ros_version     = 'indigo'
        }
        14.04: {
          $ros_version     = 'indigo'
        }
        14.10: {
          $ros_version     = 'jade'
        }
        15.05: {
          $ros_version     = 'jade'
        }
        15.10: {
          $ros_version     = 'kinetic'
        }
        16.04: {
          $ros_version     = 'kinetic'
        }
        default: { # latest lts
          $ros_version     = 'kinetic'
        }

      }
      $ros_base_package = "ros-${ros_version}-ros-base"

    }

    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
}
