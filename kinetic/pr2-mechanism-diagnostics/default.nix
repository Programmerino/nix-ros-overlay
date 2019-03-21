
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pr2-mechanism-msgs, std-srvs, catkin, diagnostic-updater, rostest, std-msgs, urdf, angles, rospy, diagnostic-msgs, roscpp, pr2-mechanism-model }:
buildRosPackage {
  pname = "ros-kinetic-pr2-mechanism-diagnostics";
  version = "1.8.17";

  src = fetchurl {
    url = https://github.com/pr2-gbp/pr2_mechanism-release/archive/release/kinetic/pr2_mechanism_diagnostics/1.8.17-0.tar.gz;
    sha256 = "e460ffa727c3e8f1e15d40e99fc784516d1afe49f01fad8254865e926a18c7fa";
  };

  propagatedBuildInputs = [ pr2-mechanism-msgs std-srvs diagnostic-updater std-msgs urdf angles rospy diagnostic-msgs roscpp pr2-mechanism-model ];
  nativeBuildInputs = [ pr2-mechanism-msgs std-srvs catkin diagnostic-updater rostest urdf angles std-msgs diagnostic-msgs roscpp pr2-mechanism-model ];

  meta = {
    description = ''The `pr2_mechanism_diagnostics` node subscribes to `mechanism_statistics` and publishes diagnostics data for joints and controllers on `/diagnostics`.'';
    #license = lib.licenses.BSD;
  };
}
