{ lib, pkgs, ... }:
{
  # Required Commandline Tools
  # JETLS - https://aviatesk.github.io/JETLS.jl/release/#Prerequisites
  # Runic - https://github.com/fredrikekre/Runic.jl?tab=readme-ov-file#installation
  programs.nixvime.extraPlugins = with pkgs.vimPlugins; [
    jetls
  ];
  lsp.servers.jetls = {
    enable = true;
    config = {
      filetypes = [ "julia" ];
      cmd = [
        "jetls"
        "--threads=auto"
        "--"
      ];
      root_markers = [ "Project.toml" ];
    };
  };
}
