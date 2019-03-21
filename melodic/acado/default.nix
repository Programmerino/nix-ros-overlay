
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, boost }:
buildRosPackage {
  pname = "ros-melodic-acado";
  version = "1.2.3";

  src = fetchurl {
    url = https://github.com/tud-cor/acado-release/archive/release/melodic/acado/1.2.3-0.tar.gz;
    sha256 = "2d84945378a8f8b6c9d8667b4e1aa02a0001130853e6bb04e29dc1906582598e";
  };

  propagatedBuildInputs = [ catkin boost ];
  nativeBuildInputs = [ cmake boost ];

  meta = {
    description = ''ACADO Toolkit'';
    #license = lib.licenses.LGPL3;
  };
}
