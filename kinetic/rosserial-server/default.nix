
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, catkin, topic-tools, rosserial-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-server";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_server/0.7.7-0.tar.gz;
    sha256 = "c0ffe69d61a2a6685a8cd858454400c55306e8388ee07ff66491f69629594188";
  };

  propagatedBuildInputs = [ rosserial-python std-msgs topic-tools rosserial-msgs roscpp ];
  nativeBuildInputs = [ std-msgs topic-tools catkin roscpp rosserial-msgs ];

  meta = {
    description = ''A more performance- and stability-oriented server alternative implemented
    in C++ to rosserial_python.'';
    #license = lib.licenses.BSD;
  };
}
