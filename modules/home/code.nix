{pkgs, config, ...}:
{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dracula-theme.theme-dracula
      vscodevim.vim
      yzhang.markdown-all-in-one
      bbenoist.nix
      llvm-vs-code-extensions.vscode-clangd
      ms-vscode.cpptools
      mkhl.direnv
      twxs.cmake
      ms-python.python
      ms-python.vscode-pylance
      ms-vscode.cpptools-extension-pack
    ];
    profiles.default.userSettings = {
      "workbench.colorCustomizations" = {
        "[Stylix]" = {
          "editor.wordHighlightBackground"  = "#${colors.base02}66";
          "editor.hoverHighlightBackground" = "#${colors.base02}66";
        };
      };
    };
  };
}
