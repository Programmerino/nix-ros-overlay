
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-multisense-description";
  version = "4.0.0";

  src = fetchurl {
    url = https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_description/4.0.0-0.tar.gz;
    sha256 = "fab6e144848562329bfedeabaf11947027389fa0d1045f4c2da778772a8b8ebb";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_description'';
    #license = lib.licenses.BSD;
  };
}
