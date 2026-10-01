{
  imports = [
    ./hardware.nix
    ./disko.nix

    ../../modules/system/base.nix
    ../../modules/system/swap.nix

    ../../modules/desktop/hyprland.nix
    ../../modules/desktop/greetd.nix
  ];

  networking.hostName = "desktop";

  system.stateVersion = "26.05";
}