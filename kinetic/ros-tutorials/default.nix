
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, turtlesim, roscpp-tutorials, catkin, rospy-tutorials }:
buildRosPackage {
  pname = "ros-kinetic-ros-tutorials";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_tutorials-release/archive/release/kinetic/ros_tutorials/0.7.1-0.tar.gz;
    sha256 = "6eddcf952421df344dba93b2966f84d8f78c12d431cd91bb8c5d63176516bf84";
  };

  propagatedBuildInputs = [ turtlesim roscpp-tutorials rospy-tutorials ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_tutorials contains packages that demonstrate various features of ROS,
    as well as support packages which help demonstrate those features.'';
    #license = lib.licenses.BSD;
  };
}
