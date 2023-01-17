{ config, pkgs, ... }:

{
  home-manager.users.bence = { pkgs, ... }: {
    home.stateVersion = "22.11";

    programs.home-manager.enable = true;

    home.packages = [ 
      pkgs.htop
    ];
 
    programs.fish = {
      enable = true;
    };
  };
}
