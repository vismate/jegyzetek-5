{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "mdbook-env";
  buildInputs = with pkgs; [
    mdbook
    mdbook-katex
  ];
}