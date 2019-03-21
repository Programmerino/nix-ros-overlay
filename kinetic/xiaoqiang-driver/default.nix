
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, setserial, tf, sensor-msgs, catkin, nav-msgs, rospy, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-xiaoqiang-driver";
  version = "0.0.12";

  src = fetchurl {
    url = https://github.com/BluewhaleRobot-release/xiaoqiang-release/archive/release/kinetic/xiaoqiang_driver/0.0.12-0.tar.gz;
    sha256 = "7779afda0b0ea51fa24d30a943a50ed1b20e6227a79bb9d162e8f5f51affba40";
  };

  propagatedBuildInputs = [ nav-msgs rospy std-msgs setserial sensor-msgs tf geometry-msgs roscpp ];
  nativeBuildInputs = [ setserial sensor-msgs catkin roscpp nav-msgs rospy std-msgs tf geometry-msgs ];

  meta = {
    description = ''The xiaoqiang driver package'';
    #license = lib.licenses.MIT;
  };
}
