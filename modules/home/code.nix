{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      vscodevim.vim
      yzhang.markdown-all-in-one
      bbenoist.nix
      llvm-vs-code-extensions.vscode-clangd
      mads-hartmann.bash-ide-vscode
      #ms-vscode.cpptools
      #mkhl.direnv
      twxs.cmake
      ms-python.python
      ms-python.vscode-pylance
    ];
    profiles.default.userSettings = {
      terminal = {
        integrated.defaultProfile.linux = "zsh";
        external.linuxExec = "kitty";
        integrated.fontFamilly = "nerdfont-v3";
        integrated.fontLigatures.enabled = "true";
      };
    };
  };
}
