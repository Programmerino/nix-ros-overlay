
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, slime-wrapper, rosemacs, catkin, roslisp, sbcl }:
buildRosPackage {
  pname = "ros-kinetic-slime-ros";
  version = "0.4.12";

  src = fetchurl {
    url = https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/kinetic/slime_ros/0.4.12-0.tar.gz;
    sha256 = "6a446081ddadda616b2512748c63171f23d852b69d3aeaba44a4dfbda21e145c";
  };

  propagatedBuildInputs = [ rosemacs roslisp slime-wrapper sbcl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Extensions for slime to assist in working with ROS packages'';
    #license = lib.licenses.Public Domain;
  };
}
