{ lib, pkgs, ... }:
{
  plugins.dashboard = {
    enable = true;
    settings = {
      theme = "doom";
      config = {
        header = [
          "┌───────────────────────────┐"
          "│   Welcome back, Michael!     │"
          "└───────────────────────────┘"
        ];
        center = [
          {
            icon = " ";
            desc = "Find file";
            key = "f";
            action = "Telescope find_files";
          }
          {
            icon = " ";
            desc = "Live grep";
            key = "g";
            action = "Telescope live_grep";
          }
          {
            icon = " ";
            desc = "File tree";
            key = "e";
            action = "NvimTreeToggle";
          }
          {
            icon = " ";
            desc = "Quit";
            key = "q";
            action = "qa";
          }
        ];
        footer = [ "Tip: press ? for which-key" ];
      };
    };
  };
}
