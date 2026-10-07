{ ... }:

{
	imports = [
		./bash.nix
		./nixvim
    ./sway-home.nix
    ./waybar.nix
    ./tofi.nix
    ./zathura.nix
	];

  xdg.configFile."foot/foot.ini".source = ../foot/foot.ini;

	programs.starship = {
		enable = true;
		enableBashIntegration = true;
	};
}
