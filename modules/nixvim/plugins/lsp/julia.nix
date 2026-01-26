{ lib, pkgs, ... }:
{
  lsp.servers.julials = {
    enable = true;
    filetypes = [ "julia" ];
    package = null;
  };
}
