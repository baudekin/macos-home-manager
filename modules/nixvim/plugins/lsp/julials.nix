{ lib, pkgs, ... }:
{
  julia-vim.enable = true;
  lsp.servers.julials = {
    enable = true;
  };
}
