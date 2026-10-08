{ ... }:

{
	imports = [
		./bash.nix
		./nixvim
    ./swayconfig.nix
    ./zathura.nix
	];

  xdg.configFile."foot/foot.ini".source = ../foot/foot.ini;

	programs.starship = {
		enable = true;
		enableBashIntegration = true;
	};
}
