{ ... }:
{
  plugins = {
    gitsigns = {
      enable = true;
      settings = {
        attach_to_untracked = true;
        current_line_blame = true;
        current_line_blame_opts = {
          delay = 0;
          virt_text_pos = "eol";
        };
      };
    };
    "indent-blankline" = {
      enable = true;
      settings = {
        indent = {
          char = "▏";
          tab_char = "▏";
        };
        scope = {
          enabled = true;
          show_start = true;
          show_end = false;
        };
      };
    };

    lualine = {
      enable = true;
      settings = {
        options = {
          theme = "gruvbox-material";
          icons_enabled = true;
          section_separators = {
            left = "|>";
            right = "<|";
          };
          component_separators = {
            left = "|>";
            right = "<|";
          };
        };
      };
    };
  };

  #  colorschemes.tokyonight = {
  #    enable = true;
  #    settings.style = "moon"; # options: "moon", "storm", "night", "day"
  #  };
  # https://github.com/sainnhe/gruvbox-material/blob/f5f912fb/colors/gruvbox-material.vim
  colorschemes.gruvbox-material = {
    enable = true;
    settings = {
      enable_bold = 1;
      enable_italic = 1;
      foreground = "original";
      show_eob = 0;
      transparent_background = 2;
    };
  };
}
