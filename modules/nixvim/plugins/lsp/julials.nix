{ lib, pkgs, ... }:
{
  lsp.servers.julials = {
    enable = true;
    #autostart = true;
    config.cmd = [
      "julia"
      "--project=~/.julia/environments/nvim-lspconfig"
      "--startup-file=no"
      "--history-file=no"
      "-e"
      "using LanguageServer; runserver()"
    ];
    #package = null;
  };
  julia-vim.enable = true;
}
