{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions;
      [
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
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "vscode-just-syntax";
          publisher = "nefrob";
          version = "0.8.0";
          sha246 = "sha256-zuDfIxhiUKRpVRxp9BceW6WPBq5NNCuS1Si0/6kfqF8=";
        }
      ];

    profiles.default.userSettings = {
      terminal = {
        integrated.defaultProfile.linux = "zsh";
        external.linuxExec = "kitty";
        integrated.fontFamilly = "nerdfont-v3";
        integrated.fontLigatures.enabled = "true";
      };
      editor.minimap.enabled = "false";
    };
  };
}
