class ros::params {

  # TODO better parameterization
  # potential parameters:
  #  testing vs main
  #  python3

  case $::operatingsystem {
    Ubuntu: {
      $repo_key            = 'B01FA116'
      $repo_key_url        = 'https://raw.githubusercontent.com/ros/rosdistro/master/ros.key'
      $repo_url            = 'http://packages.ros.org/ros/ubuntu'
      $repo_component      = "main"

      # By default, install the latest available ROS release for
      # the platform.
      case $::operatingsystemrelease {
        10.04: {
          $ros_version     = "fuerte"
        }
        12.04: {
          $ros_version     = "hydro"
        }
        12.10: {
          $ros_version     = "hydro"
        }
        13.04: {
          $ros_version     = "hydro"
        }
        13.10: {
          $ros_version     = "indigo"
        }
        14.04: {
          $ros_version     = "indigo"
        }
        14.10: {
          $ros_version     = "jade"
        }

      }
      $ros_base_package = "ros-${ros_version}-ros-base"

    }

    default: {
      fail("Unsupported platform: ${::osfamily}/${::operatingsystem}")
    }
  }
}
