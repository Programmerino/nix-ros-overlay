
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, tf, catkin, pythonPackages, rostest, rviz, robot-state-publisher, roscpp, xacro, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-dynpick-driver";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/tork-a/dynpick_driver-release/archive/release/kinetic/dynpick_driver/0.2.0-0.tar.gz;
    sha256 = "3a78a3fd5ab15c800d3f2fddac1e6e8d50c150d8ffb775d656947e7f2cf4f5b4";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ std-srvs rviz robot-state-publisher geometry-msgs tf xacro roscpp ];
  nativeBuildInputs = [ std-srvs catkin pythonPackages.catkin-pkg roscpp geometry-msgs ];

  meta = {
    description = ''Driver package for Wacohtech dynpick force sensor. This contains <a href="http://ros.org/">ROS</a>-compatible linux driver, as well as a communication test tool.<br/>
  As of Oct 2016, it's tested with the following models of dynpick:
  <ul>
    <li><a href="http://www.wacoh-tech.com/products/dynpick/wdf-6m200-3.html">wdf-6m200-3</a></li>
    <li><a href="http://www.wacoh-tech.com/en/products/dynpick/200n.html">WEF-6A200</a> (confirmed <a href="https://github.com/tork-a/dynpick_driver/pull/35#issuecomment-256031851">here</a>)</li>
  </ul>'';
    #license = lib.licenses.BSD;
  };
}
