# options.nix
{ lib, ... }:
{
  opts = {
    # Show line numbers
    number = true;
    relativenumber = true;
    cursorline = true;

    # Default indentation and tabs
    tabstop = 4;
    shiftwidth = 4;
    autoindent = true;
    expandtab = true;
  };
}
