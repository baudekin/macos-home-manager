# options.nix
{ lib, ... }:
{
  opts = {
    # Basic Settings
    termguicolors = true;
    splitbelow = true;
    splitright = true;
    timeoutlen = 500;
    completeopt = "menuone,noselect";
    updatetime = 300;
    clipboard = "unnamedplus";
    mouse = "a";

    # Line Numbers
    number = true;
    relativenumber = true;
    cursorline = true;
    wrap = false;
    signcolumn = "yes";
    scrolloff = 10;
    sidescrolloff = 5;

    # Default indentation and tabs
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 4;
    autoindent = true;
    expandtab = true;
    shiftround = true;
    smartindent = true;

    # Search Settings
    ignorecase = true;
    smartcase = true;
    incsearch = true;
    hlsearch = true;

    # Display Whitespace Charators
    list = true;
    listchars = {
      tab = "→ ";
      trail = "°";
      extends = "›";
      precedes = "‹";
    };

    # Handle folding
    foldmethod = "indent";
    foldlevel = 99;
    foldenable = false;
  };
}
