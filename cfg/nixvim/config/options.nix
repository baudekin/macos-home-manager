# options.nix
{ lib, ... }:
{
  opts = {
    # Show line numbers
    number = true;
    relativenumber = true;
    cursorline = true;
  };
}
