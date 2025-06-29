{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    discord
    obs-studio
    gitkraken
    just
    jq
    clang-tools
  ];
}
