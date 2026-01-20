# treesetter.nix
{ lib, ... }:
{
  plugins.treesitter = {
    enable = true;
    # Enable specific features:
    highlight.enable = true; # Enables syntax highlighting
    indent.enable = true; # Enables indentation
    textobjects.enable = true; # Enables text objects for structural movement/selection

    # Specify languages to install
    ensureInstalled = [
      "c"
      "css"
      "fortran"
      "html"
      "javascript"
      "julia"
      "lua"
      "python"
      "nix"
      "typescript"
      "vim"
      "vimdoc"
    ];
  };
}
