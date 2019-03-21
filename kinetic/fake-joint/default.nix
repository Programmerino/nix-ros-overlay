
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fake-joint-driver, fake-joint-launch }:
buildRosPackage {
  pname = "ros-kinetic-fake-joint";
  version = "0.0.2-r1";

  src = fetchurl {
    url = https://github.com/tork-a/fake_joint-release/archive/release/kinetic/fake_joint/0.0.2-1.tar.gz;
    sha256 = "1c54b99c698be26250a2791885fa6d859f2cc2165002284487d6183faaa4d18d";
  };

  propagatedBuildInputs = [ fake-joint-launch fake-joint-driver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This metapackage depends on fake-joint related package for ros_control.'';
    #license = lib.licenses.Apache License 2.0;
  };
}
