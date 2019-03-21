
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libcap, roscpp }:
buildRosPackage {
  pname = "ros-melodic-ethercat-grant";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/shadow-robot/ethercat_grant-release/archive/release/melodic/ethercat_grant/0.2.5-0.tar.gz;
    sha256 = "3b5baa1b6b84b2538af53dcc410d980579cbfc932f002dcf3cc25071bb452a52";
  };

  propagatedBuildInputs = [ roscpp libcap ];
  nativeBuildInputs = [ catkin roscpp libcap ];

  meta = {
    description = ''Makes it possible to run the ros_ethercat_loop without using sudo. Forked from pr2-grant'';
    #license = lib.licenses.BSD;
  };
}
