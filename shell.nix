{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  rust_overlay = import (builtins.fetchTarball https://github.com/oxalica/rust-overlay/archive/master.tar.gz);
  nixpkgs = import <nixpkgs> { overlays = [ rust_overlay ]; };
in
mkShell {
  buildInputs = [
    git
    nixpkgs.rust-bin.stable.latest.default
  ];
}
