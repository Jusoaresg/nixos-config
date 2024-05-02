{ pkgs, config, ...}:

{
  environment.systemPackages = with pkgs; [


	#Color temperature (Blue light)
	sct

	#Terminal
	kitty

	#Shell Utility
	xclip
	starship
	neofetch
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

	#LSP
	lua-language-server


	#Browser
	vivaldi

	#Gtk config
	lxappearance
  ];
}
