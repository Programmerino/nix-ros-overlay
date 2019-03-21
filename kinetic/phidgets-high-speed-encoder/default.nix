
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, libphidget21, sensor-msgs, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-high-speed-encoder";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_high_speed_encoder/0.7.7-0.tar.gz;
    sha256 = "165e982cf595abbb5453f9d46a083cf274cb804e4fbf9e9a2d48186c3812275d";
  };

  propagatedBuildInputs = [ phidgets-api message-runtime libphidget21 std-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ phidgets-api message-generation catkin libphidget21 std-msgs sensor-msgs roscpp ];

  meta = {
    description = ''Driver for the Phidgets high speed encoder devices'';
    #license = lib.licenses.BSD;
  };
}
