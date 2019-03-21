
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, rostest, rospy, diagnostic-msgs, roscpp, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-kinetic-test-diagnostic-aggregator";
  version = "1.9.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/diagnostics-release/archive/release/kinetic/test_diagnostic_aggregator/1.9.3-0.tar.gz;
    sha256 = "51a8ae09d06caaf2521869f374a5e44348f37850a75b7ea0e0252a69b49d10e1";
  };

  propagatedBuildInputs = [ pluginlib rospy diagnostic-msgs roscpp diagnostic-aggregator ];
  nativeBuildInputs = [ rostest pluginlib rospy diagnostic-msgs catkin roscpp diagnostic-aggregator ];

  meta = {
    description = ''Basic diagnostic_aggregator tests are  in the'';
    #license = lib.licenses.BSD;
  };
}
