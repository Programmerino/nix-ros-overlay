
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, launch, phidgets-analog-inputs, phidgets-digital-inputs, phidgets-digital-outputs }:
buildRosPackage {
  pname = "ros-iron-phidgets-ik";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/phidgets_drivers-release/archive/release/iron/phidgets_ik/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "dbc4bf694d575640e7d9e48ba73f2f848d25b860b46d2e197bd8648d63d829d0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ launch phidgets-analog-inputs phidgets-digital-inputs phidgets-digital-outputs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver for the Phidgets InterfaceKit devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
