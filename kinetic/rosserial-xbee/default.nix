
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosserial-python, catkin, pythonPackages, rosserial-msgs, rospy, diagnostic-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rosserial-xbee";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/rosserial-release/archive/release/kinetic/rosserial_xbee/0.7.7-0.tar.gz;
    sha256 = "f69d257d4dc44ea72e9a6eaacadb7b9b836f7cd5d7709d43313a3f2ef9389b4e";
  };

  propagatedBuildInputs = [ pythonPackages.pyserial rosserial-python rospy diagnostic-msgs rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Allows multipoint communication between rosserial
     nodes connected to an xbee. All nodes communicate back
     to a master xbee connected to a computer running ROS.

     This software currently only works with Series 1 Xbees.

     This pkg includes python code from the python-xbee project:
     http://code.google.com/p/python-xbee/'';
    #license = lib.licenses.BSD;
  };
}
