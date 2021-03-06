{ lib, mkDerivation, base, hakyll, stdenv }:
mkDerivation {
  pname = "nmattia-site-builder";
  version = "0.1.0.0";
  src = lib.cleanSource ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base hakyll ];
  license = stdenv.lib.licenses.free;
}
