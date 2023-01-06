# dotfiles

## Arch Linux Setup

### Bootloader `/boot/loader/entries`

- title Arch Linux (linux)
- linux /vmlinuz-linux
- initrd /amd-ucode.img
- initrd /initramfs-linux.img
- options root=PARTUUID=27d14420-fbcb-44be-9fe5-214036305e32 zswap.enabled=0 rootflags=subvol=@ rw rootfstype=btrfs cow_spacesize=10G copytoram=n nvidia nvidia-drm.modeset=1 nouveau.modeset=0 i915.modeset=1 radeon.modeset=1 nvme_load=yes module_blacklist=pcspkr

### Mkinitcpio `/etc/mkinitcpio.conf`

- MODULES=(btrfs nvidia nvidia_modeset nvidia_uvm nvidia_drm)
- BINARIES=(/usr/bin/btrfs)
- FILES=()
- HOOKS=(base udev autodetect keyboard keymap modconf block filesystems fsck)

### Pacman `/etc/pacman.conf`

- Enable parallel downloads
- Enable multilib repo

### Get fastest mirrors with reflector
- sudo reflector --verbose --country 'United States' -l 20 -p https --sort rate --save /etc/pacman.d/mirrorlist

### /etc/modprobe.d/nvidia.conf
- options nvidia-drm modeset=1

### Enable TLP
- sudo systemctl enable tlp.service

### sddm
- sudo systemctl enable sddm.service

### sddm sugar-candy theme
- Create /etc/sddm.conf and copy contents from conf file

### Bluetooth (add user to group)
- sudo usermod -aG wheel $(whoami)

### Packages
go 
firefox 
linux-headers 
nvidia-dkms 
ttc-iosevka 
steam 
visual-studio-code-bin 
hyprland-git 
waybar-hyprland-git 
tlp 
sddm 
swaybg 
polkit 
polkit-gnome 
wofi 
mako 
acpilight 
xdg-desktop-portal-hyprland
pamixer 
bluez 
blueman 
bluez-utils 
swaylock 
slurp 
gnome-themes-extra 
sddm-sugar-candy-git 
foot
thunar
thunar-archive-plugin 
file-roller 
xarchiver 
redshift-wayland-git 
grim 
qt5-wayland 
qt5ct 
libva 
nvidia-vaapi-driver-git 
wl-clipboard 
ttf-nerd-fonts-symbols-2048-em 
gnome-keyring 
gparted 
neofetch 
wlogout 
pavucontrol 
git

### Yay
- `pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si`
