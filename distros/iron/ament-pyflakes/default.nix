
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-pycodestyle, python3Packages, pythonPackages }:
buildRosPackage {
  pname = "ros-iron-ament-pyflakes";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/iron/ament_pyflakes/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "7a5dbd6c1088afdd56d9a0d6b8a76cd412a82be8078ab64db58fd40e66e3ab35";
  };

  buildType = "ament_python";
  checkInputs = [ ament-pycodestyle pythonPackages.pytest ];
  propagatedBuildInputs = [ python3Packages.pyflakes ];

  meta = {
    description = ''The ability to check code using pyflakes and generate xUnit test
    result files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
