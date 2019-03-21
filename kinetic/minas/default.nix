
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tra1-moveit-config, catkin, ethercat-manager, tra1-bringup, minas-control, tra1-description }:
buildRosPackage {
  pname = "ros-kinetic-minas";
  version = "1.0.10";

  src = fetchurl {
    url = https://github.com/tork-a/minas-release/archive/release/kinetic/minas/1.0.10-0.tar.gz;
    sha256 = "1a5f0c022a514fe533ef46f284a56463d0db3396c5cbc57a7f9d8d433b641b2d";
  };

  propagatedBuildInputs = [ tra1-bringup tra1-moveit-config minas-control tra1-description ethercat-manager ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Meta package for minas for PANASONIC MINAS EtherCAT Motor Driver Control System'';
    #license = lib.licenses.GPLv2;
  };
}
