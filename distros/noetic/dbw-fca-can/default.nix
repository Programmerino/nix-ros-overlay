
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, can-msgs, catkin, dataspeed-can-msg-filters, dataspeed-can-usb, dataspeed-ulc-can, dbw-fca-description, dbw-fca-msgs, geometry-msgs, nodelet, roscpp, roslaunch, rospy, sensor-msgs, socketcan-bridge, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-dbw-fca-can";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_fca_ros-release/archive/release/noetic/dbw_fca_can/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "7ada7c56a985ff17631887059d277fa76134f3917937fd2f7758b89ac7edd797";
  };

  buildType = "catkin";
  buildInputs = [ catkin dataspeed-can-msg-filters ];
  checkInputs = [ roslaunch ];
  propagatedBuildInputs = [ can-msgs dataspeed-can-usb dataspeed-ulc-can dbw-fca-description dbw-fca-msgs geometry-msgs nodelet roscpp roslaunch rospy sensor-msgs socketcan-bridge std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Drive-by-wire interface to the Dataspeed Inc. Chrysler Pacifica DBW kit'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
