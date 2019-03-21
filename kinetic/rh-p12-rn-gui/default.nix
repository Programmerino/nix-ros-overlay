
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, qt4, rh-p12-rn-base-module-msgs, catkin, roscpp, qt-build, robotis-controller-msgs }:
buildRosPackage {
  pname = "ros-kinetic-rh-p12-rn-gui";
  version = "0.1.0";

  src = fetchurl {
    url = https://github.com/ROBOTIS-GIT-release/RH-P12-RN-release/archive/release/kinetic/rh_p12_rn_gui/0.1.0-0.tar.gz;
    sha256 = "3efd9d6b022c891309e16933aa644d9a55e7282409978d9d5516ed262c0e116e";
  };

  propagatedBuildInputs = [ qt-build qt4 rh-p12-rn-base-module-msgs robotis-controller-msgs roscpp ];
  nativeBuildInputs = [ catkin qt-build qt4 rh-p12-rn-base-module-msgs robotis-controller-msgs roscpp ];

  meta = {
    description = ''This package provides GUI interface to control the RH-P12-RN'';
    #license = lib.licenses.Apache 2.0;
  };
}
