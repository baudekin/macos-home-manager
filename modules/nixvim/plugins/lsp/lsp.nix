{ ... }:
{
  lsp = {
    enable = true;
    servers = {
      vue_ls.enable = true;
      ts_ls.enable = true;
      cssls.enable = true;
      jsonls.enable = true;
      lua_ls.enable = true;
      nixd.enable = true;
    };
  };
}
