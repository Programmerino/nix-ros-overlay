
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, catkin, std-msgs, diagnostic-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-cob-sick-s300";
  version = "0.6.13";

  src = fetchurl {
    url = https://github.com/ipa320/cob_driver-release/archive/release/kinetic/cob_sick_s300/0.6.13-0.tar.gz;
    sha256 = "3651c5ff2e7354318f07800a7eae59ec785d5e4109460f3426e646b95a9829f1";
  };

  propagatedBuildInputs = [ boost std-msgs diagnostic-msgs sensor-msgs roscpp ];
  nativeBuildInputs = [ catkin boost std-msgs diagnostic-msgs sensor-msgs roscpp ];

  meta = {
    description = ''This package published a laser scan message out of a Sick S300 laser scanner.'';
    #license = lib.licenses.Apache 2.0;
  };
}
