
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-move-group, pr2-description, catkin, robot-state-publisher, joint-state-publisher }:
buildRosPackage {
  pname = "ros-kinetic-pr2-moveit-config";
  version = "0.7.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit_pr2-release/archive/release/kinetic/pr2_moveit_config/0.7.1-0.tar.gz;
    sha256 = "328424c2f9737095f4012c277831b420ab22bed11c4a6dac37c47baa707f585a";
  };

  propagatedBuildInputs = [ robot-state-publisher moveit-ros-move-group joint-state-publisher pr2-description ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the pr2 with the MoveIt Motion Planning Framework'';
    #license = lib.licenses.BSD;
  };
}
