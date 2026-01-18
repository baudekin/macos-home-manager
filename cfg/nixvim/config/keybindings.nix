# keybindings.nix
{ lib, ... }:
{
   # keybindings - globals
   globals.mapleader = " ";

   # keybinding - keymaps
   keymaps = [
      # keymap.set("n", "<leader>cd", vim.cmd.Ex)
      {
        mode = "n";
        key = "<leader>cd";
        options.silent = true;
        action = "<cmd>Ex<CR>";
      }	
   ];
}
