# keybindings.nix
{ lib, ... }:
{
  # Keybindings - globals
  globals.mapleader = " ";

  # Keybinding - keymaps
  keymaps = [
    # keymap.set("n", "<leader>cd", vim.cmd.Ex)
    {
      mode = "n";
      key = "<leader>cd";
      options.silent = true;
      action = "<cmd>Ex<CR>";
    }
    # vim.keymap.set('n', '<leader>td', function()
    #   vim.diagnostic.enable(not vim.diagnostic.is_enabled())
    # end, { silent = true, noremap = true })
    {
      mode = "n";
      key = "<leader>td";
      options.silent = true;
      options.noremap = true;
      action.__raw = "function() vim.diagnostic.enable(not vim.diagnostic.is_enabled()) end";
    }
    #vim.keymap.set("n", "<leader>h", function()
    #          print("Hello from Neovim!")
    #end, { desc = "Print a greeting" })
    {
      mode = "n";
      key = "<leader>h";
      options.noremap = true;
      action.__raw = "function() print(\" Hello keymap function.\")  end";
    }

    # Telescope Plugin
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Telescope buffers<CR>";
      options.silent = true;
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options.silent = true;
    }

    # LazyGit
    {
      mode = "n";
      key = "<leader>lg";
      action = "<cmd>LazyGit<CR>";
      options.silent = true;
    }

    # vim.keymap.set("n", "<leader>a", function() require("harpoon.mark").add_file() end, { desc = "Harpoon: Add file" })
    #    {
    #      mode = "n";
    #      key = "<leader>a";
    #      action.__raw = "function() require('harpoon.mark').add_file() end";
    #      options.silent = false;
    #      options.desc = "Harpoon: Add file";
    #      options.noremap = true;
    #    }
    #    # vim.keymap.set("n", "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "Harpoon: Toggle quick menu" })
    #    {
    #      mode = "n";
    #      key = "<C-e>";
    #      action.__raw = "function() require('harpoon.vi').toggle_quick_menu() end";
    #      options.silent = false;
    #      options.desc = "Harpoon: Toggle quick menu";
    #      options.noremap = true;
    #    }
    #    # vim.keymap.set("n", "<C-1>", function() require("harpoon.ui").nav_file(1) end, { desc = "Harpoon: Go to file 1" })
    #    {
    #      mode = "n";
    #      key = "<C-1>";
    #      action.__raw = "function() require('harpoon.vi').nav_file(1) end";
    #      options.silent = false;
    #      options.desc = "Harpoon: Go to fie 1";
    #      options.noremap = true;
    #    }
    #    # vim.keymap.set("n", "<C-1>", function() require("harpoon.ui").nav_file(2) end, { desc = "Harpoon: Go to file 2" })
    #    {
    #      mode = "n";
    #      key = "<C-2>";
    #      action.__raw = "function() require('harpoon.vi').nav_file(2) end";
    #      options.silent = false;
    #      options.desc = "Harpoon: Go to fie 2";
    #      options.noremap = true;
    #    }
  ];
}
