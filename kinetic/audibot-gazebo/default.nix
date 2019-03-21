
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, gazebo-ros-pkgs, tf, catkin, rostest, rviz, robot-state-publisher, rospy, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-audibot-gazebo";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/robustify/audibot-release/archive/release/kinetic/audibot_gazebo/0.1.0-0.tar.gz;
    sha256 = "92aa9421649812ed8e7e2551c3f43e9d100f50e112d33795a95874a2eacfa7ea";
  };

  checkInputs = [ rostest rospy ];
  propagatedBuildInputs = [ gazebo-ros gazebo-ros-pkgs rviz robot-state-publisher tf roscpp ];
  nativeBuildInputs = [ gazebo-ros catkin tf roscpp ];

  meta = {
    description = ''Gazebo model plugin to simulate Audibot'';
    #license = lib.licenses.BSD;
  };
}
