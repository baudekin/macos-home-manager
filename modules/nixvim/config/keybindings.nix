# keybindings.nix
{ ... }:
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

  ];
}
