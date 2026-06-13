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
    wl-clipboard

    # Wallpaper
    hyprpaper

    # Files
    bemenu

    # Browser
    vivaldi

    # Modeling
    blender

    # Torrent
    qbittorrent

    # Archives
    unzip

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
}
