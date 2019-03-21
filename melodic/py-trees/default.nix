
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages }:
buildRosPackage {
  pname = "ros-melodic-py-trees";
  version = "0.6.8";

  src = fetchurl {
    url = https://github.com/stonier/py_trees-release/archive/release/melodic/py_trees/0.6.8-0.tar.gz;
    sha256 = "f0749de4867ee89d353aa9ba22338ec73044a05e186ee0d611caa917fc708c4d";
  };

  propagatedBuildInputs = [ pythonPackages.pydot pythonPackages.enum34 ];
  nativeBuildInputs = [ catkin pythonPackages.setuptools ];

  meta = {
    description = ''Pythonic implementation of behaviour trees.'';
    #license = lib.licenses.BSD;
  };
}
