{
  pkgs,
  lib,
  config,
  ...
}:
{
  # https://devenv.sh/languages/
  languages.fortran.enable = true;

  # https://devenv.sh/packages/
  packages = [
    pkgs.gnumake
  ];

  enterShell = ''
    echo "Fortran development environment loaded."
    gfortran --version
  '';

  tasks = {
    "bash:enable_nvim" = {
      exec = "home-manager switch --flake ~/.config/home-manager/#bodkin";
      before = [
        "devenv:enterShell"
      ];
    };
  };

  # See full reference at https://devenv.sh/reference/options/
}
