
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, bond, bondcpp, boost, geometry-msgs, launch, launch-testing-ament-cmake, launch-testing-ros, lifecycle-msgs, nav-msgs, nav2-common, nav2-msgs, rclcpp, rclcpp-action, rclcpp-lifecycle, std-srvs, test-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-nav2-util";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_util/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "9151042e7573691c50867ef09c5dc470461d7282c52f1ab85c2616efaf99a613";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ action-msgs ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing-ament-cmake launch-testing-ros std-srvs test-msgs ];
  propagatedBuildInputs = [ action-msgs bond bondcpp boost geometry-msgs launch launch-testing-ament-cmake lifecycle-msgs nav-msgs nav2-common nav2-msgs rclcpp rclcpp-action rclcpp-lifecycle tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ asl20 bsd3 ];
  };
}
