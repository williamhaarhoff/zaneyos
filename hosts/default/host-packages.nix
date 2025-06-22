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
        ms-vscode.cpptools-extension-pack
      ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      #  {
      #    name = "s-nlf-fh.glassit";
      #    publisher = "hikarin522";
      #    version = "0.2.6";
      #    sha256 = "1hp6gjh4xp2m1xlm1jsdzxw9d8frkiidhph6nvl24d0h8z34w49g";
      #  }
     ];

    })
    gitkraken
    just
    jq
    clang-tools
  ];
}
