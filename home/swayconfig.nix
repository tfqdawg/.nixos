{ config, ... }:

{
  # sway config
  xdg.configFile."sway/config".source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.nixos/sway/config";
  
  # waybar
  programs.waybar.enable = true;
  xdg.configFile."waybar/config.jsonc".source = ../waybar/config.jsonc;
  xdg.configFile."waybar/style.css".source = config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.nixos/waybar/style.css";

  xdg.configFile."waybar/powermenu.sh".source = ../waybar/powermenu.sh;

  # tofi
  xdg.configFile."tofi/config".source = ../tofi/config;
}
