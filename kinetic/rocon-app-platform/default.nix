
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rocon-app-manager, catkin, rocon-apps, rocon-app-utilities }:
buildRosPackage {
  pname = "ros-kinetic-rocon-app-platform";
  version = "0.9.1";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/rocon_app_platform-release/archive/release/kinetic/rocon_app_platform/0.9.1-0.tar.gz;
    sha256 = "44717f9c5f7ef2726dad306020790386e127fc5fa3ff83bdfc1e7ad50d4315f8";
  };

  propagatedBuildInputs = [ rocon-app-manager rocon-apps rocon-app-utilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Robot application platform for ros robots with a default implementation in python.'';
    #license = lib.licenses.BSD;
  };
}
