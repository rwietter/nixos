# (1) Mount the partitions

```shell
sudo mount /dev/sda2 /mnt/
sudo mkdir -p /mnt/boot/efi
sudo mount /dev/sda1 /mnt/boot/efi/
sudo mount --bind /dev/ /mnt/dev
sudo mount --bind /proc/ /mnt/proc
sudo mount --bind /sys /mnt/sys/
sudo nixos-enter
unset SUDO_USER
```

# (2) In case of a corrupted boot partition, you can try to fix it by following these steps:

```shell
# Check the disk for errors
sudo smartctl -a /dev/sda

# If the boot partition is corrupted, you can try to format it and remount it
sudo mkfs.vfat -F32 /dev/sda1

# Remount the partitions
sudo mount /dev/sda1 /mnt/boot/efi/
```

# (3) Enter the NixOS environment

```shell
sudo nixos-enter --root /mnt

# or

sudo nixos-enter
```

# (4) Update hardware configuration
  
```shell
# Copy UUID and update hardware-configuration.nix
blkid or lsblk -f

# Edit hardware-configuration.nix and update the UUIDs
nano hardware-configuration.nix
```

# (5) install the bootloader
```shell
bootctl install --esp-path=/boot/efi

or

nixos-rebuild boot --install-bootloader --flake .#rwietter
```

# (6) Exit and reboot

```shell
exit
sudo umount -R /mnt
```