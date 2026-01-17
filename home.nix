{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "bodkin";
  home.homeDirectory = "/Users/bodkin";
  nixpkgs.config.allowUnfreePredicate = _: true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.vscode


    pkgs.brave
    
    #pkgs.emacs
    # Required by Emacs 
    pkgs.cmake # vterm requires cmake to build its C module
    # pkgs.libvterm # The underlying library Not supported on MacOs

    pkgs.discord
    
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    #pkgs.hello

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    #(pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')

    # Darwin version of ghostty
    pkgs.ghostty-bin

    # Lazy Git
    pkgs.lazygit

    # Prover
    pkgs.lean4


    # Commandline tool
    pkgs.readline

    # Media Viewer Mocos Version
    pkgs.vlc-bin

    # Install vs-code
    pkgs.vscode
  ];
 

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;
    ".tmux.conf".source = dotfiles/tmux.conf;
    ".gitconfig".source = dotfiles/gitconfig;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/bodkin/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    JULIA_EDITOR = "nvim";
    JULIA_NUM_THREADS = 8;
    VIRTUAL_ENV_DISABLE_PROMPT = 1;
  };

  # Add Juliaup to path. Julia requires binaries to be in particular locations
  # This makes it hard to use Nix
  home.sessionPath = [
    "/Users/bodkin/.juliaup/bin"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Neovim
  #programs.neovim = {
  #    enable = true;
  #    defaultEditor = true;
  #};
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
  };

  # Emacs Pakages 
  programs.emacs = {
    enable = true;
    package = pkgs.emacs;  # replace with pkgs.emacs-gtk if desireda
    
    # Add vterm to the list of extra packages managed by home-manager
    extraPackages = epkgs: with epkgs; [
      vterm
      nix-mode
      magit
    ];

    # Optional: Add any extra elisp configuration needed for vterm
    extraConfig = ''
      (require 'vterm)
      (setq vterm-shell "/bin/sh") ; Configure the shell vterm uses
    '';
  };

# readline: https://github.com/nix-community/home-manager/blob/master/modules/programs/readline.nix
  programs.readline = {
    enable = true;
    variables.editing-mode = "vi";
  };


  programs.zsh = {
    enable = true;


    # Other zsh options can go here (e.g., enableCompletion, history)
    enableCompletion = true;
    history = {
        size = 10000;
    };

    shellAliases = {
      ll = "ls -l";
      # Add your  aliases here
      nv = "nvim";
      ls = "ls -G --color=auto";
    };

    initContent = ''
      bindkey -v
    '';

    oh-my-zsh = {
      enable = true;
      theme = "gozilla"; # Or your preferred standard theme
      plugins = [
        "git"
        "sudo"
        # Add standard plugins here
        "golang"
      ];
      # custom = "..."; # Use this for custom themes/plugins (see step 3)
    };


  };
  
  

  # Optional: ensure your environment uses zsh
  # home.shellAliases = { ... };
  # home.sessionVariables = { ... };

  # ... other home manager configurations ...
}
