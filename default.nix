{ nixpkgs ? builtins.fetchTarball "https://github.com/lopsided98/nixpkgs/archive/nix-ros.tar.gz"
, overlays ? []
, ... }@args:

import nixpkgs (args // {
  overlays = [ (import ./overlay.nix) ] ++ overlays;
})
