{
  imports = [
    ./desktop/hyprland.nix
  ];

  home.username = "Nyji";
  home.homeDirectory = "/home/Nyji";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
  };

  programs.noctalia = {
    enable = true;
    systemd.enable = true;
  };
}