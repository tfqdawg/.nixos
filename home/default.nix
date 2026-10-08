{ ... }:

let
  aliases = {
    vi = "nvim";
    hiscw = "history -c && history -w";
    lsg = "sudo nix-env --list-generations -p /nix/var/nix/profiles/system";
    dga = "sudo nix-collect-garbage -d";
    dgs = "sudo nix-env -p /nix/var/nix/profiles/system --delete-generations";
    ncg = "sudo nix-collect-garbage";
    nrf = "sudo nixos-rebuild switch --flake .";
    ga = "git add";
    gc = "git commit -m";
    gs = "git status";
	};

in{
  imports = [
    ./nixvim
    ./swayconfig.nix
    ./zathura.nix
  ];

  programs.bash = {
    enable = true;
    shellAliases = aliases;
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };

  xdg.configFile."foot/foot.ini".source = ../foot/foot.ini;
}
