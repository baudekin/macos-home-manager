{ lib, pkgs, ... }:
{
  plugins = {
    ltex.enable = true;
  };
  lsp.servers.ltex = {
    enable = true;
  };
}
