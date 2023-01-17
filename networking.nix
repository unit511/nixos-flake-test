{ config, pkgs, ... }:

{

  networking = {
    hostName = "x555l-nixos-flake";
    networkmanager.enable = true;
    firewall = { 
      enable = true;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };

}
