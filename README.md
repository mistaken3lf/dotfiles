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

