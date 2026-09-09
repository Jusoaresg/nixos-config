{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # AI
    opencode

    steam-run

    btop

    # Terminal
    foot
    wget
    fzf
    ripgrep
    wakatime-cli
    tmux
    wl-clipboard

    # Terminal
    xrandr

    # Wallpaper
    hyprpaper

    # Files
    bemenu

    # Browser
    vivaldi

    # Modeling
    blender
    material-maker

    # Engine
    godot-mono

    # Torrent
    qbittorrent

    # Videos
    mpv

    # Archives
    unzip
    gzip

    # Sound
    pavucontrol

    # Screenshot
    satty
    grimblast

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

    # Keyboards
    vial

    # Games
    prismlauncher

    # Images
    gimp
    aseprite

    # Audio
    easyeffects
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      vim = "nvim";
      vi = "nvim";
    };

    histSize = 10000;
    histFile = "$HOME/.zsh_history";
    setOptions = [
      "HIST_IGNORE_ALL_DUPS"
    ];

    ohMyZsh = {
      enable = true;
      plugins = [ "git" ];
    };
  };

  programs.starship = {
    enable = true;
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  programs.git = {
    enable = true;
    config.user = {
      name = "jusoaresg";
      email = "julianosgreg@gmail.com";
    };
  };

  programs.steam.enable = true;

  programs.obs-studio = {
    enable = true;

    plugins = with pkgs.obs-studio-plugins; [
      obs-pipewire-audio-capture
      obs-vaapi
      obs-multi-rtmp
    ];
  };
}
