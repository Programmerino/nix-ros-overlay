
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, ethercat-hardware, realtime-tools, catkin, diagnostic-updater, pr2-controller-manager, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pr2-ethercat";
  version = "1.6.30";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_robot-release/archive/release/kinetic/pr2_ethercat/1.6.30-0.tar.gz;
    sha256 = "771ca836cc90bcb9b2228222bdcce39b97556db914d27f36916596fee36d6d91";
  };

  propagatedBuildInputs = [ diagnostic-updater std-srvs pr2-controller-manager ethercat-hardware diagnostic-msgs realtime-tools roscpp ];
  nativeBuildInputs = [ diagnostic-updater std-srvs pr2-controller-manager ethercat-hardware diagnostic-msgs realtime-tools catkin roscpp ];

  meta = {
    description = ''Main loop that runs the robot.'';
    #license = lib.licenses.BSD;
  };
}
