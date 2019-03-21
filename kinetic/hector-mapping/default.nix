
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, tf, catkin, message-filters, roscpp, nav-msgs, message-generation, message-runtime, visualization-msgs, eigen, tf-conversions, laser-geometry }:
buildRosPackage {
  pname = "ros-kinetic-hector-mapping";
  version = "0.3.5";

  src = fetchurl {
    url = https://github.com/tu-darmstadt-ros-pkg-gbp/hector_slam-release/archive/release/kinetic/hector_mapping/0.3.5-0.tar.gz;
    sha256 = "30d1768ad414151ea1e69f71dd154bb11e6c2ae76537a6cdde3e9fd8bfb4a6bd";
  };

  propagatedBuildInputs = [ boost tf message-filters roscpp laser-geometry nav-msgs message-runtime eigen tf-conversions visualization-msgs ];
  nativeBuildInputs = [ boost tf catkin message-filters roscpp laser-geometry nav-msgs message-generation eigen tf-conversions visualization-msgs ];

  meta = {
    description = ''hector_mapping is a SLAM approach that can be used without odometry as well as on platforms that exhibit roll/pitch motion (of the sensor, the platform or both).
    It leverages the high update rate of modern LIDAR systems like the Hokuyo UTM-30LX and provides 2D pose estimates at scan rate of the sensors (40Hz for the UTM-30LX).
    While the system does not provide explicit loop closing ability, it is sufficiently accurate for many real world scenarios. The system has successfully been used on
    Unmanned Ground Robots, Unmanned Surface Vehicles, Handheld Mapping Devices and logged data from quadrotor UAVs.'';
    #license = lib.licenses.BSD;
  };
}
