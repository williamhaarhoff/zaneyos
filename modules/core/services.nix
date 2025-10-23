{
  pkgs,
  profile,
  ...
}: {
  # Services to start
  services = {
    libinput.enable = true; # Input Handling
    fstrim.enable = true; # SSD Optimizer
    gvfs.enable = true; # For Mounting USB & More
    openssh.enable = true; # Enable SSH
    blueman.enable = true; # Bluetooth Support
    tumbler.enable = true; # Image/video preview
    gnome.gnome-keyring.enable = true;

    udev.packages = [
      pkgs.probe-rs
      pkgs.stlink
    ];

    keyd = {
      enable = true;
      keyboards = {
        default = {
          ids = ["*"];
          settings = {
            main = {
              capslock = "layer(capslock)";
            };
            capslock = {
              h = "left";
              l = "right";
              k = "up";
              j = "down";
              u = "prior";
              i = "home";
              o = "end";
              p = "next";
            };
          };
        };
      };
    };
    smartd = {
      enable =
        if profile == "vm"
        then false
        else true;
      autodetect = true;
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}
