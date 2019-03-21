
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gmapping, map-server, openni2-camera, amcl, catkin, move-base, roscpp, depthimage-to-laserscan, dwa-local-planner, nodelet, rospy, std-msgs, openni2-launch, dynamic-reconfigure, visualization-msgs, pcl-ros }:
buildRosPackage {
  pname = "ros-kinetic-oculusprime";
  version = "0.1.3";

  src = fetchurl {
    url = https://github.com/xaxxontech/oculusprime_ros-release/archive/release/kinetic/oculusprime/0.1.3-0.tar.gz;
    sha256 = "6daabd727850d25eda5451634f17666297ae5dad0fd15cf67b088a538f4eea9f";
  };

  propagatedBuildInputs = [ gmapping map-server openni2-camera amcl openni2-launch move-base rospy dwa-local-planner visualization-msgs pcl-ros std-msgs depthimage-to-laserscan dynamic-reconfigure roscpp nodelet ];
  nativeBuildInputs = [ visualization-msgs dynamic-reconfigure std-msgs nodelet catkin roscpp pcl-ros rospy ];

  meta = {
    description = ''Oculus Prime ROS Interface'';
    #license = lib.licenses.BSD;
  };
}
