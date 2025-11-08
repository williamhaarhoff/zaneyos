{pkgs, ...}: let
  # builds, but the kicad python path is not correctly modified
  wrappedKicad = pkgs.symlinkJoin {
    name = "kicad-with-easyeda2kicad";
    paths = [pkgs.kicad pkgs.easyeda2kicad];
    buildInputs = [pkgs.makeWrapper];
    postBuild = ''
      wrapProgram $out/bin/kicad \
        --set PYTHONPATH "${pkgs.easyeda2kicad}/${pkgs.python312.sitePackages}:$PYTHONPATH"
    '';
  };
  # quick hack to get easyeda2kicad importing into kicad
  kicadPythonEnv = pkgs.python3.withPackages (ps:
    with ps; [
      pkgs.kicad
      pkgs.easyeda2kicad
    ]);
in {
  environment.systemPackages = [pkgs.kicad kicadPythonEnv];
}
