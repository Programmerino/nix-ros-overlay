
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, nav-2d-msgs, nav-msgs, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-dwb-msgs";
  version = "1.1.9-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/humble/dwb_msgs/1.1.9-1.tar.gz";
    name = "1.1.9-1.tar.gz";
    sha256 = "6e2659eb8c6612390370d72640545be7756b4173d8dac65e8dc445b67afe1dc7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs nav-2d-msgs nav-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Message/Service definitions specifically for the dwb_core'';
    license = with lib.licenses; [ bsd3 ];
  };
}
