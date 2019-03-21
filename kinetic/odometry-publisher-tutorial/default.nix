
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, nav-msgs, catkin, tf, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-odometry-publisher-tutorial";
  version = "0.2.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/navigation_tutorials-release/archive/release/kinetic/odometry_publisher_tutorial/0.2.3-0.tar.gz;
    sha256 = "70cea6a4d984eee00bbf0c0b2099a0f7634596d9b414ab2c9c2a2046c3a97028";
  };

  propagatedBuildInputs = [ nav-msgs tf roscpp ];
  nativeBuildInputs = [ catkin nav-msgs tf roscpp ];

  meta = {
    description = ''The odometry_publisher_tutorial package'';
    #license = lib.licenses.BSD;
  };
}
