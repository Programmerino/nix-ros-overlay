
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-tuw-object-msgs";
  version = "0.0.11";

  src = fetchurl {
    url = https://github.com/tuw-robotics/tuw_msgs-release/archive/release/kinetic/tuw_object_msgs/0.0.11-0.tar.gz;
    sha256 = "d8f5229251f802d18938dc867fe768967e3fd5d4179afc0948bea0de55588818";
  };

  propagatedBuildInputs = [ std-msgs message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The tuw_object_msgs package. This pkg provides a set of messages used to detect, map and track objects of different types.'';
    #license = lib.licenses.BSD;
  };
}
