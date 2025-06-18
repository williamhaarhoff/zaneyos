{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    discord
    obs-studio
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        bbenoist.nix
        llvm-vs-code-extensions.vscode-clangd
        ms-vscode.cpptools
        mkhl.direnv
        twxs.cmake
        ms-python.python
        ms-python.vscode-pylance
      ];
    })
    gitkraken
  ];
}
