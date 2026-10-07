{ ... }:

{
  programs.waybar.enable = true;
  xdg.configFile."waybar/config.jsonc".source = ../waybar/config.jsonc;
  xdg.configFile."waybar/style.css".source = ../waybar/style.css;
  xdg.configFile."waybar/powermenu.sh".source = ../waybar/powermenu.sh;
}
