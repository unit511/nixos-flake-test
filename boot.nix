{ config, pkgs, ... }:

{

  boot = {

    # Bootloader
    loader = {
      systemd-boot.enable = true;
      systemd-boot.consoleMode = "max";
      systemd-boot.configurationLimit = 10;
      efi.canTouchEfiVariables = true;
      efi.efiSysMountPoint = "/boot/efi";
    };

    kernelParams = ["quiet"];

    kernelPackages = pkgs.linuxPackages_latest;

    initrd = {
      systemd.enable = true;
      secrets = {
        "/crypto_keyfile.bin" = null;
      };
    };

    plymouth = {
      enable = true;
      themePackages = [ pkgs.adi1090x-plymouth ];
      theme = "lone";
    };
  };
    
}
