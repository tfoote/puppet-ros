class ros::rosdep {
  # TODO parameterize on python3
  exec {'rosdep-init':
    command    => '/usr/bin/rosdep init',
    user       => 'root',
    creates    => '/etc/ros/rosdep/sources.list.d/20-default.list',
    require    => Package['python-rosdep'],
  }
}
