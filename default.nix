{ mkDerivation, base, stdenv, text, wai, warp, yesod-core
, yesod-form
}:
mkDerivation {
  pname = "yesod-minimal";
  version = "0.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    base text wai warp yesod-core yesod-form
  ];
  license = stdenv.lib.licenses.mit;
  hydraPlatforms = stdenv.lib.platforms.none;
}
