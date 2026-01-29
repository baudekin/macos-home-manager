{ lib, pkgs, ... }:
{
  programs.nixvime.extraPlugins = with pkgs.vimPlugins; [
    jetls
  ];
  lsp.servers.jetls = {
    enable = true;
    config = {
      filetypes = [ "julia" ];
      root_markers = [ "Project.toml" ];
      cmd = [
        "jetls"
        "--threads=auto"
        "--"
      ];
    };
  };
}
