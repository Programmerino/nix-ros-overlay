
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, rqt-gui-py, pr2-power-board, catkin, rqt-gui, rqt-robot-dashboard, rospy, std-msgs, diagnostic-msgs, pr2-msgs, roslib }:
buildRosPackage {
  pname = "ros-kinetic-rqt-pr2-dashboard";
  version = "0.4.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_pr2_dashboard-release/archive/release/kinetic/rqt_pr2_dashboard/0.4.0-0.tar.gz;
    sha256 = "61aab14f7a24e9f62720ae7bc389011a9b2140e5c1219497658d7e341592951d";
  };

  propagatedBuildInputs = [ rqt-gui-py pr2-power-board std-srvs rqt-gui rqt-robot-dashboard rospy std-msgs diagnostic-msgs pr2-msgs roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_pr2_dashboard is a GUI for debugging and controlling low-level state of the PR2.  It shows things like battery status and breaker states, as well as integrating tools like rqt_console and robot_monitor.'';
    #license = lib.licenses.BSD;
  };
}
