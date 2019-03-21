
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-uuv-control-msgs";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/uuvsimulator/uuv_simulator-release/archive/release/kinetic/uuv_control_msgs/0.6.10-0.tar.gz;
    sha256 = "9e8de2f07e64e4243c6fc01ba16c1909235076ba288e3df15ae430d40baa150f";
  };

  propagatedBuildInputs = [ std-msgs message-generation message-runtime geometry-msgs ];
  nativeBuildInputs = [ std-msgs catkin message-generation geometry-msgs ];

  meta = {
    description = ''The uuv_control_msgs package'';
    #license = lib.licenses.Apache-2.0;
  };
}
