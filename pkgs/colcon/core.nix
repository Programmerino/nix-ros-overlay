{ lib, buildPythonApplication, buildPythonPackage, makeWrapper, fetchPypi
, python, distlib, empy, pytest, pytest-cov, pytest-repeat
, pytest-rerunfailures, setuptools, pytestCheckHook, flake8, flake8-blind-except
, flake8-docstrings, flake8-import-order, pep8-naming, pylint
}:

let
  withExtensions = extensions: buildPythonApplication {
    pname = "colcon";
    inherit (package) version;
    format = "other";

    dontUnpack = true;
    dontBuild = true;
    doCheck = false;

    nativeBuildInputs = [ makeWrapper ];
    buildInputs = [ package ] ++ extensions;

    installPhase = ''
      makeWrapper '${package}/bin/colcon' "$out/bin/colcon" \
        --prefix PYTHONPATH : "$PYTHONPATH"
    '';

    passthru = package.passthru // {
      withExtensions = moreExtensions: withExtensions (moreExtensions ++ extensions);
    };
  };

  package = buildPythonPackage rec {
    pname = "colcon-core";
    version = "0.12.1";

    src = fetchPypi {
      inherit pname version;
      hash = "sha256-L7sK9sekF0bw8+N2bcuHb0Ur0xgzz7Tv3DPInp+gd/A=";
    };

    propagatedBuildInputs = [
      distlib
      empy
      pytest
      pytest-cov
      pytest-repeat
      pytest-rerunfailures
      setuptools
    ];

    checkInputs = [
      pytestCheckHook
      flake8
      flake8-blind-except
      # flake8-builtins
      # flake8-class-newline
      # flake8-comprehensions
      # flake8-deprecated
      flake8-docstrings
      flake8-import-order
      # flake8-quotes
      pep8-naming
      pylint
      # scspell3k
    ];

    # Requires unpackaged dependencies
    doCheck = false;

    passthru = {
      inherit withExtensions;
    };

    meta = with lib; {
      description = "Command line tool to build sets of software packages.";
      homepage = "https://colcon.readthedocs.io";
      license = licenses.asl20;
      maintainers = with maintainers; [ lopsided98 ];
    };
  };
in package
