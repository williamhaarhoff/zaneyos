{
  # Git Configuration ( For Pulling Software Repos )
  gitUsername = "Will Haarhoff";
  gitEmail = "williamhaarhoff@gmail.com";

  # Hyprland Settings
  # ex: extraMonitorSettings = "monitor = DVI-I-1,1920x1080@60,auto,1";
  # ex: extraMonitorSettings = "monitor = DP-1,1920x1080@60,auto,1";
  extraMonitorSettings = " 
  monitor=DP-1,1920x1080@60,0x0,auto
  monitor=DVI-I-1,1920x1080@60,1920x0,auto
  ";

  # Waybar Settings
  clock24h = true;

  # Program Options
  browser = "brave"; # Set Default Browser (google-chrome-stable for google-chrome)
  terminal = "kitty"; # Set Default System Terminal
  keyboardLayout = "us";
  consoleKeyMap = "us";

  # For Nvidia Prime support
  intelID = "PCI:1:0:0";
  nvidiaID = "PCI:0:2:0";

  # Enable NFS
  enableNFS = true;

  # Enable Printing Support
  printEnable = false;

  # Set Stylix Image
  stylixImage = ../../wallpapers/mountainscapedark.jpg;

  # Set Waybar
  #  Available Options:
  #waybarChoice = ../../modules/home/waybar/waybar-simple.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-ddubs.nix;
  #waybarChoice = ../../modules/home/waybar/waybar-ddubs-2.nix;
  #waybarChoice = ../../modules/home/waybar/Jerry-waybar.nix;
  waybarChoice = ../../modules/home/waybar/waybar-curved.nix;

  # Set Animation style
  # Available options are:
  # animations-def.nix  (default)
  # animations-end4.nix (end-4 project)
  # animations-dynamic.nix (ml4w project)
  # animations-moving.nix (ml4w project)
  animChoice = ../../modules/home/hyprland/animations-def.nix;

  # Enable Thunar GUI File Manager
  thunarEnable = false;
}
