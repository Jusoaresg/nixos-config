{ pkgs, config, ...}:

{
  environment.systemPackages = with pkgs; [

	# XMonad Packages
	dunst
	haskellPackages.xmobar
	dmenu

	# Terminal
	(st.overrideAttrs (oldAttrs: rec {
	    patches = [
	      ./home/st/st-alpha-20220206-0.8.5.diff
	      ./home/st/st-font2-0.8.5.diff
	      ./home/st/st-scrollback-20210507-4536f46.diff
	      ./home/st/st-scrollback-mouse-20220127-2c5edf2.diff
	      ./home/st/st-xresources-signal-reloading-20220407-ef05519.diff
	      ];
	    # Using a local file
	    configFile = writeText "config.def.h" (builtins.readFile ./home/st/config.def.h);
	    postPatch = "${oldAttrs.postPatch}\n cp ${configFile} config.def.h";
	  }))

	ueberzugpp
	imagemagick
	poppler
	bat
	wkhtmltopdf-bin
	ffmpegthumbnailer
	epub-thumbnailer

	#Shell Utility
	xclip
	starship
	fastfetch
	nix-search-cli
	tmux
	tmux-sessionizer
	zoxide
	yazi
	unzip
	wget
	zathura
	btop
	httpie
	jq
	ani-cli

	#Utility
	flameshot # Screenshot
	pavucontrol # Audio Control
	gnome.gnome-disk-utility # Devices control
	playerctl # Media controller

	feh # Wallpaper
	imlib2 # Wallpaper utility

	#Programming
	dotnet-sdk_8
	dotnet-aspnetcore_8
	python3
	cargo
	nodePackages_latest.nodejs
	yarn
	gcc
	lua
	go
	gnumake42

	# Databases
	dbeaver

	#LSP
	lua-language-server

	# Distrobox and apps with GUI
	distrobox
	xorg.xhost

	#Color temperature (Blue light)
	sct

	#Colors
	pywal

	#Browser
	vivaldi

	#Gtk config
	lxappearance

  ];
}
