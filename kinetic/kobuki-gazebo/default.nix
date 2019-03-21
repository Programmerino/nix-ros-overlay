
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, kobuki-gazebo-plugins, kobuki-random-walker, catkin, kobuki-safety-controller, gazebo-plugins, robot-state-publisher, kobuki-description, yocs-cmd-vel-mux }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-gazebo";
  version = "0.5.7";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/kobuki_desktop-release/archive/release/kinetic/kobuki_gazebo/0.5.7-0.tar.gz;
    sha256 = "0478e18c65b686328b7a9e97c401e46077d8ce7803b8af2f5600ca8074a46008";
  };

  propagatedBuildInputs = [ gazebo-ros kobuki-gazebo-plugins robot-state-publisher kobuki-random-walker kobuki-description yocs-cmd-vel-mux kobuki-safety-controller gazebo-plugins ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki simulation for Gazebo'';
    #license = lib.licenses.BSD;
  };
}
