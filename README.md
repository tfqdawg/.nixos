## <p align="center"> NixOS Config. </p>

<p align="center">
<img src="https://img.shields.io/badge/NixOS-1c1b19?style=for-the-badge&logo=nixos&logoColor=e08060">
<img src="https://img.shields.io/badge/Sway-1c1b19?style=for-the-badge&logo=sway&logoColor=e08060">
</p>

<br>

#### _1.0 Install._

1. Connect to internet (eg. via `nmtui`).
2. Git & Neovim via nix-shell.
```bash
nix-shell -p git neovim
```

3. Clone Repo.
```bash
git clone https://github.com/tfqdawg/.nixos.git
```

4. Override `hardware-configuration.nix` with system generated one.
```bash
# Replace $USER with username
cp /etc/nixos/hardware-configuration.nix /home/$USER/.nixos/system/hardware-configuration.nix
```

5. Disable import for `./nixvim` in `.nixos/home/default.nix`.
7. Disable import for `./unfree.nix` in `.nixos/system/default.nix`.
8. Rebuild system using `sudo nixos-rebuild switch --flake .#USERNAME`.
9. Re-enable imports after system is successfully installed.

#### _2.0 Flatpak._
```bash
# flathub remote
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# flatpaks
flatpak install flathub org.mozilla.firefox org.gimp.GIMP moe.launcher.an-anime-game-launcher -y
```

#### _To do._

- [x] finish migrate.
- [x] installation steps.
- [x] flatpak list.
- [ ] trim and minimize userspace resource footprint.
