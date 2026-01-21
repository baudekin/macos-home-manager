# telescope.nix
{ ... }:
{
  plugins.telescope = {
    enable = true;
    extensions."fzf-native" = {
      enable = true; # enable fzf-native extension
      settings = {
        fuzzy = true;
        override_file_sorter = true;
        override_generic_sorter = true;
        case_mode = "smart_case";
      };
    };
  };
  plugins.web-devicons.enable = true;
}
