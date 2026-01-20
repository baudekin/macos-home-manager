# harpoon.nix
{ lib, pkgs, ... }:
{
  plugins.harpoon = {
    enable = true;
    enableTelescope = true;
    autoload = true;
    settings = [
      { save_on_toggle = true; }
      { sync_on_ui_close = false; }
    ];
  };
}
