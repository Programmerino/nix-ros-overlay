
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-jog-msgs";
  version = "0.0.1";

  src = fetchurl {
    url = https://github.com/tork-a/jog_control-release/archive/release/kinetic/jog_msgs/0.0.1-0.tar.gz;
    sha256 = "3d5fa80e96a256cb5fd769a0b522562f3e615a9a128b7d5cd8f3f1f26209c470";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The jog_msgs package'';
    #license = lib.licenses.Apache License 2.0;
  };
}
