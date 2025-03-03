
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-generator-gz, clearpath-gz }:
buildRosPackage {
  pname = "ros-humble-clearpath-simulator";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_simulator/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "933673b579b302b0950571642b71d58f0ffdd011e3a49590e69dbe9a67534af9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-generator-gz clearpath-gz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Simulator Metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
