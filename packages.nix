{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Terminal
    foot
    wget
    fzf
    ripgrep
    wakatime-cli
    tmux

    # Wallpaper
    hyprpaper

    # Neovim
    vimPlugins.telescope-fzf-native-nvim

    # Files
    bemenu

    # Browser
    vivaldi

    # Archives
    unzip

    # Sound
    pavucontrol

    # Screenshot
    swappy
    grim
    slurp

    # Database
    dbeaver-bin

    # Json
    jq

    # C++
    gnumake
    gcc

    # Rust
    rustup

    # Go
    go

    # Node
    nodejs

    # Dotnet
    dotnet-sdk
    dotnet-sdk_10

    # Lua
    lua-language-server
    stylua

    # Nix
    nixfmt
  ];

  programs.steam.enable = true;
}
