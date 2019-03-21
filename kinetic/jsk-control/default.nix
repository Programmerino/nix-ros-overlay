
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, jsk-ik-server, eus-qpoases, joy-mouse, jsk-teleop-joy, jsk-footstep-controller, catkin, jsk-calibration, jsk-footstep-planner, eus-qp, eus-nlopt }:
buildRosPackage {
  pname = "ros-kinetic-jsk-control";
  version = "0.1.14";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_control-release/archive/release/kinetic/jsk_control/0.1.14-0.tar.gz;
    sha256 = "3c7ee3361d9f1ca50213630a7ff4a23d6f42b1e551ce3b4c231e64f600bee211";
  };

  propagatedBuildInputs = [ jsk-ik-server eus-qpoases joy-mouse jsk-teleop-joy jsk-footstep-controller jsk-calibration jsk-footstep-planner eus-qp eus-nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The jsk_control package'';
    #license = lib.licenses.BSD;
  };
}
