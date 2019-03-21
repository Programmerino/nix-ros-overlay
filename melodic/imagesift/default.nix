
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, libsiftfast, image-transport, sensor-msgs, cv-bridge, posedetection-msgs, catkin, jsk-topic-tools, rostest, jsk-recognition-utils, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-melodic-imagesift";
  version = "1.2.10";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/imagesift/1.2.10-0.tar.gz;
    sha256 = "322d64597608e08314224ee31b4fd32f1d3ab7fe3b6fea7cbff20131e411ffc5";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ libsiftfast image-transport sensor-msgs cv-bridge jsk-topic-tools posedetection-msgs roscpp jsk-recognition-utils nodelet ];
  nativeBuildInputs = [ cmake-modules libsiftfast image-transport sensor-msgs cv-bridge jsk-topic-tools posedetection-msgs roscpp catkin jsk-recognition-utils nodelet ];

  meta = {
    description = ''For every image, computes its sift features and send a new message with the image, its intrinsic parameters, and the features.
    Parameters include:
    display - shows the image on the local computer'';
    #license = lib.licenses.LGPL;
  };
}
