{ config, pkgs, ... }:

{

  networking = {
    hostName = "nixos-flake-test";
    networkmanager.enable = true;
    firewall = { 
      enable = true;
      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];
    };
  };

}
