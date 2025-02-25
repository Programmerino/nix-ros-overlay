
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, cob-srvs, diagnostic-msgs, diagnostic-updater, python3Packages, roscpp, rospy, sensor-msgs, socketcan-interface, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-bms-driver";
  version = "0.7.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_bms_driver/0.7.14-1.tar.gz";
    name = "0.7.14-1.tar.gz";
    sha256 = "01bc847a132e3e17c52fb9d3a648ae73483a1f9682408787038611891b033606";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-msgs cob-srvs diagnostic-msgs diagnostic-updater python3Packages.numpy roscpp rospy sensor-msgs socketcan-interface std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver package for interfacing the battery management system (BMS) on Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
