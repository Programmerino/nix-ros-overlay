
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-delphi-srr-msgs";
  version = "2.3.1";

  src = fetchurl {
    url = https://github.com/astuff/astuff_sensor_msgs-release/archive/release/kinetic/delphi_srr_msgs/2.3.1-0.tar.gz;
    sha256 = "4a8aa34a1484075f13e2952ea936ebed5a2826b4865b2f698120464fb85eacea";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''Message definitions for the Delphi SRR'';
    #license = lib.licenses.MIT;
  };
}
