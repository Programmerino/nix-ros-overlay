
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pyros-common, roslint, catkin-pip, catkin, pyros-config, rosservice, pyros-test, rospy, rostest, message-generation, rostopic, message-runtime, pyros-utils, std-msgs, rosunit, pyzmp }:
buildRosPackage {
  pname = "ros-kinetic-pyros-interfaces-ros";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/asmodehn/pyros-rosinterface-rosrelease/archive/release/kinetic/pyros_interfaces_ros/0.4.2-0.tar.gz;
    sha256 = "f4a3118390bc6d0fb05ec685bed3218ae1f6976ddf8c0657a95d0749c43de024";
  };

  checkInputs = [ rostest rostopic pyros-test rosunit rosservice ];
  propagatedBuildInputs = [ pyros-common message-runtime rospy std-msgs pyros-config pyzmp pyros-utils ];
  nativeBuildInputs = [ pyros-common roslint catkin-pip pyros-config catkin rospy message-generation pyros-utils std-msgs pyzmp ];

  meta = {
    description = ''Dynamic ROS interface for Pyros'';
    #license = lib.licenses.BSD;
  };
}
