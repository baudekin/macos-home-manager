{
  pkgs,
  lib,
  config,
  ...
}:
{
  languages.python = {
    enable = true;
    version = "3.14";

    venv.enable = true;
    venv.requirements = ./requirements.txt;
  };
  tasks = {
    "bash:enable_nvim" = {
      exec = "home-manager switch --flake ~/.config/home-manager/#bodkin";
      before = [
        "devenv:enterShell"
      ];
    };
  };
}
