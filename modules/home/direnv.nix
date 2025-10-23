{pkgs, ...}: {
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    #enableBashIntegration = true;
    nix-direnv.enable = true;
    nix-direnv.package = pkgs.nix-direnv;
  };
}
