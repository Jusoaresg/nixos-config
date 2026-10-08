{
  config,
  pkgs,
  unstable,
  halleyPkgs,
  inputs,
  ...
}:

let
  androidSdk = pkgs.androidenv.androidPkgs.androidsdk;
in
{
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.android_sdk.accept_license = true;

  systemd.tmpfiles.rules = [
    "L+ /opt/android-sdk - - - - ${androidSdk}/libexec/android-sdk"
  ];

  environment.binsh = "${pkgs.bash}/bin/bash";
  environment.variables = {
    ANDROID_HOME = "/opt/android-sdk";
    ANDROID_SDK_ROOT = "/opt/android-sdk";
    AndroidSdkDirectory = "/opt/android-sdk";
    JAVA_HOME = "${pkgs.jdk17}";
  };

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
    file

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
    inputs.zen-browser.packages."${pkgs.stdenv.hostPlatform.system}".default

    # Modeling
    blender
    material-maker

    # Engine
    godot-mono
    godot
    unityhub

    # Android
    android-tools
    androidenv.androidPkgs.androidsdk
    androidenv.androidPkgs.ndk-bundle
    jdk17

    # KVM
    unstable.lan-mouse

    # Torrent
    qbittorrent

    # Videos
    mpv
    ffmpeg

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
    unstable.antigravity-ide
    unstable.antigravity-cli
    zed

    # Keyboards
    vial

    # Games
    prismlauncher

    # Images
    gimp
    aseprite
    resvg

    # Audio
    easyeffects

    # Notification
    libnotify
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

    interactiveShellInit = ''
      export ANDROID_HOME="/opt/android-sdk"
      export ANDROID_SDK_ROOT="/opt/android-sdk"
      export AndroidSdkDirectory="/opt/android-sdk"
    '';
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
