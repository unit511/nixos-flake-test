{ config, pkgs, ... }:

{

  virtualisation.libvirtd.enable = true;

  # GPU-V
  virtualisation.kvmgt = {
    enable = true;
    vgpus = {
      "i915-GVTg_V4_4" = {
        uuid = [ "aca5932c-8339-4c4d-a4bb-2999fb6a12f5" ];
      };
    };
  };

  programs.dconf.enable = true;

  environment.systemPackages = with pkgs; [ virt-manager ];

  users.users.bence.extraGroups = [ "libvirtd" ];

}
