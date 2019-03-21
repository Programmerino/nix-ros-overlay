
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, roslint, nav-grid, nav-grid-iterators, nav-core2, catkin, nav-2d-utils, nav-msgs, roscpp, nav-2d-msgs, geometry-msgs, map-msgs }:
buildRosPackage {
  pname = "ros-kinetic-nav-grid-pub-sub";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/locusrobotics/robot_navigation-release/archive/release/kinetic/nav_grid_pub_sub/0.2.5-0.tar.gz;
    sha256 = "8b4f57c9eccf3d22a1409434f9a1464e2431575bf4854bef4b3e6282d2df411b";
  };

  checkInputs = [ roslint ];
  propagatedBuildInputs = [ nav-grid nav-core2 nav-2d-msgs nav-2d-utils nav-msgs roscpp nav-grid-iterators geometry-msgs map-msgs ];
  nativeBuildInputs = [ nav-grid nav-core2 catkin nav-2d-msgs nav-2d-utils nav-msgs roscpp nav-grid-iterators geometry-msgs map-msgs ];

  meta = {
    description = ''Publishers and Subscribers for nav_grid data.'';
    #license = lib.licenses.BSD;
  };
}
