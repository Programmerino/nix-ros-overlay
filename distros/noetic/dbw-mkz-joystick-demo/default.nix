
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, dbw-mkz-can, dbw-mkz-msgs, joy, roscpp, roslaunch, roslib, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-mkz-joystick-demo";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_mkz_ros-release/archive/release/noetic/dbw_mkz_joystick_demo/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "97ac3f61dff26b108262155a3b65a3329dbf1c792e64e836bfa065b7cf78cab5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch roslib ];
  propagatedBuildInputs = [ dbw-mkz-can dbw-mkz-msgs joy roscpp roslaunch sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Demonstration of drive-by-wire with joystick'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
