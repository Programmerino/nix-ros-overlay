
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, rocon-service-pair-msgs, message-runtime, rocon-std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rocon-app-manager-msgs";
  version = "0.9.0-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/kinetic/rocon_app_manager_msgs/0.9.0-1.tar.gz;
    sha256 = "4a0974e63257e62d1e74dbd3c11bd5eeeb714a78ccd895366da7fdf5df51dce6";
  };

  propagatedBuildInputs = [ rocon-service-pair-msgs message-runtime rocon-std-msgs ];
  nativeBuildInputs = [ catkin message-generation rocon-service-pair-msgs rocon-std-msgs ];

  meta = {
    description = ''Messages used by the platform app manager.'';
    #license = lib.licenses.BSD;
  };
}
