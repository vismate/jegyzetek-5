let 
  pkgs = import (builtins.fetchTarball {
    url = "https://github.com/nixos/nixpkgs/archive/4ecab3273592f27479a583fb6d975d4aba3486fe.tar.gz";
  }){};
in
pkgs.mkShell {
  name = "mdbook-env";
  buildInputs = with pkgs; [
    mdbook
    mdbook-katex
  ];
}