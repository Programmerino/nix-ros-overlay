
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, qt5 }:
buildRosPackage {
  pname = "ros-kinetic-libqt-widgets";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/qt_metapackages-release/archive/release/kinetic/libqt_widgets/1.0.1-0.tar.gz;
    sha256 = "660467789c16ebd927d610c4afddc84a86ec837d35960893fbc410350d741368";
  };

  propagatedBuildInputs = [ qt5.qtbase ];
  nativeBuildInputs = [ catkin qt5.qtbase ];

  meta = {
    description = ''libqt-widgets metapackage supporting qt4 and qt5'';
    #license = lib.licenses.United States Government Purpose;
  };
}
