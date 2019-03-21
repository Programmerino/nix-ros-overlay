
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-tools, catkin, ecl-core, ecl-lite, ecl-manipulation, ecl-navigation }:
buildRosPackage {
  pname = "ros-kinetic-ecl";
  version = "0.60.1-r1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_manipulation-release/archive/release/kinetic/ecl/0.60.1-1.tar.gz;
    sha256 = "3748f5fae84d99969a4ca2a3004dbf4b5b1408f5c79f9a18f4bc4febba68639e";
  };

  propagatedBuildInputs = [ ecl-core ecl-lite ecl-manipulation ecl-tools ecl-navigation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage bringing all of ecl together.'';
    #license = lib.licenses.BSD;
  };
}
