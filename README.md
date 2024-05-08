# My nixos-config

First, delete the hardware-configuration

Now create a new hardware-configuration with:

``
    nixos-generate-config
``


To rebuild the system use

``
    sudo nixos-rebuild switch --flake /etc/nixos#default    
``

All the dotfiles are stored in the home/dotfiles with:

XMonad and XMobar config
Fish configuration with my alias and kanagawa theme
St terminal emulator with patches and my keybindings
Gtk configuration
