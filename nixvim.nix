# nixvim.nix
{ lib, ... }:
{
  # You can use lib.nixvim in your config
  fooOption = lib.nixvim.mkRaw "print('My first Nix Module')";

  # Configure Nixvim without prefixing with `plugins.nixvim`
  plugins.nixvim.enable = true;

  colorschemes.catppuccin.enable = true;
  plugins.lualine.enable = true;

  opts = {
    # Show line numbers
    number = true;
  };
}

