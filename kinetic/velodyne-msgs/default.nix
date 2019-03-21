
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-velodyne-msgs";
  version = "1.5.2";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/velodyne-release/archive/release/kinetic/velodyne_msgs/1.5.2-0.tar.gz;
    sha256 = "8d559a77e5fdb9bd94d1938644690333665fad616a3dfef0525e29653e3048aa";
  };

  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ std-msgs catkin message-generation ];

  meta = {
    description = ''ROS message definitions for Velodyne 3D LIDARs.'';
    #license = lib.licenses.BSD;
  };
}
