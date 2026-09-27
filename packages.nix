{
  config,
  pkgs,
  unstable,
  halleyPkgs,
  ...
}:

{
  nixpkgs.config.android_sdk.accept_license = true;
  environment.systemPackages = with pkgs; [
    # Terminal
    foot
    wget
    fzf
    ripgrep
    wakatime-cli
    tmux
    wl-clipboard
    btop

    # Shell
    noctalia

    # Wayland Compositor
    halleyPkgs.halley-unstable

    # Terminal
    xrandr

    # Wallpaper
    hyprpaper

    # Browser
    vivaldi

    # Modeling
    blender
    material-maker

    # Engine
    godot-mono
    godot

    # Android
    android-tools
    androidenv.androidPkgs.androidsdk 
    androidenv.androidPkgs.ndk-bundle 
    jdk17

    # Torrent
    qbittorrent

    # Videos
    mpv

    # Video Edition
    kdePackages.kdenlive

    # Archives
    unzip
    zip
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
    (dotnetCorePackages.combinePackages [
      dotnetCorePackages.sdk_8_0
      dotnetCorePackages.sdk_9_0
      dotnetCorePackages.sdk_10_0
    ])

    # Lua
    lua-language-server
    stylua

    # Nix
    nixfmt

    # AI
    unstable.antigravity
    unstable.antigravity-cli
    zed

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
