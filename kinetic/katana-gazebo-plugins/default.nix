
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, control-msgs, katana-msgs, control-toolbox, trajectory-msgs, sensor-msgs, catkin, actionlib }:
buildRosPackage {
  pname = "ros-kinetic-katana-gazebo-plugins";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_gazebo_plugins/1.1.2-0.tar.gz;
    sha256 = "734a02bff32ecf9ea8e2e78f8fc61d5f083dd4a3ba3153e423cf0eac662a9899";
  };

  propagatedBuildInputs = [ gazebo-ros actionlib control-toolbox control-msgs katana-msgs trajectory-msgs sensor-msgs ];
  nativeBuildInputs = [ gazebo-ros actionlib control-toolbox control-msgs katana-msgs trajectory-msgs sensor-msgs catkin ];

  meta = {
    description = ''This package provides Gazebo plugins to simulate the Katana arm.'';
    #license = lib.licenses.GPL;
  };
}
