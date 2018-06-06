{ compiler ? import ./ghc.nix }:

let
  pkgs = import ./nixpkgs-pinned { };

  haskellPackages = pkgs.haskell.packages."${compiler}".override {
    overrides = new: old: {
      yesod-minimal = old.callPackage ./.. { };
    };
  };
in
  haskellPackages.yesod-minimal
