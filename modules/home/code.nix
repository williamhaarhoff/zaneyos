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
        github.vscode-github-actions
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          name = "vscode-just-syntax";
          publisher = "nefrob";
          version = "0.8.0";
          sha256 = "sha256-zuDfIxhiUKRpVRxp9BceW6WPBq5NNCuS1Si0/6kfqF8=";
        }
        {
          name = "vscode-catch2-test-adapter";
          publisher = "matepek";
          version = "4.17.1";
          sha256 = "sha256-X/bq10Jq+s0hOHreCK+RFefq9cRlINNaUUkK9f7Us4A=";
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
