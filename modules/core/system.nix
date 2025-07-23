{host, ...}: let
  inherit (import ../../hosts/${host}/variables.nix) consoleKeyMap;
in {
  nix = {
    settings = {
      download-buffer-size = 250000000;
      auto-optimise-store = true;
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      substituters = ["https://hyprland.cachix.org"];
      trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    };
  };
  time.timeZone = "Pacific/Auckland";
  i18n.defaultLocale = "en_NZ.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_NZ.UTF-8";
    LC_IDENTIFICATION = "en_NZ.UTF-8";
    LC_MEASUREMENT = "en_NZ.UTF-8";
    LC_MONETARY = "en_NZ.UTF-8";
    LC_NAME = "en_NZ.UTF-8";
    LC_NUMERIC = "en_NZ.UTF-8";
    LC_PAPER = "en_NZ.UTF-8";
    LC_TELEPHONE = "en_NZ.UTF-8";
    LC_TIME = "en_NZ.UTF-8";
  };
  environment.variables = {
    ZANEYOS_VERSION = "2.3.1";
    ZANEYOS = "true";
  };
  fileSystems."/home/will/data0" = {
    device = "/dev/disk/by-uuid/4e5360d6-5efa-45c6-b472-1f625be169ca";
    fsType = "ext4";
    options = ["defaults"];
  };
  fileSystems."/home/will/data1" = {
    device = "/dev/disk/by-uuid/a5be17a4-f495-40b6-bfd0-6294bb765498";
    fsType = "ext4";
    options = ["defaults"];
  };
  console.keyMap = "${consoleKeyMap}";
  system.stateVersion = "23.11"; # Do not change!
}
