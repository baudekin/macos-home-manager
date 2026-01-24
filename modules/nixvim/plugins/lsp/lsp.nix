{ lib, ... }:
{
  lsp = {
    enable = true;
    inlayHints.enable = true;
    servers = {
      # Enable specific servers
      bashls = {
        enable = true;
        config.command = [
          "bash-language-server"
          "start"
        ];
        config.filetypes = [
          "bash"
          "sh"
        ];
      };
      nil_ls = {
        enable = true;
        config.formatting.command = [ "nixpkgs-fmt" ];
      };
      lua-ls.enable = true;
      build-vim.enable = true;
    };

    lsp-format.enable = true;

    keymaps =
      lib.mapAttrsToList
        (
          key: props:
          {
            inherit key;
            options.silent = true;
          }
          // props
        )
        {
          "<leader>k".action.__raw = "function() vim.diagnostic.jump({ count=-1, float=true }) end";
          "<leader>j".action.__raw = "function() vim.diagnostic.jump({ count=1, float=true }) end";
          gd.lspBufAction = "definition";
          gD.lspBufAction = "references";
          gt.lspBufAction = "type_definition";
          gi.lspBufAction = "implementation";
          K.lspBufAction = "hover";
          "<F2>".lspBufAction = "rename";
        };

    plugins = {
      lsp-format = {
        enable = true;
        lspServersToEnable = "all";
      };

      # Sane defaults for all servers
      lspconfig.enable = true;
    };
  };
}
