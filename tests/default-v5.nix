# This file has been generated by node2nix 1.1.0. Do not edit!

{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, nodejs ? pkgs."nodejs-5_x"}:

let
  nodeEnv = import ../nix/node-env.nix {
    inherit (pkgs) stdenv python utillinux runCommand writeTextFile;
    inherit nodejs;
  };
in
import ./node-packages-v5v6.nix {
  inherit (pkgs) fetchurl fetchgit;
  inherit nodeEnv;
}