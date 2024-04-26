{ pkgs, config, ...}:

{
  environment.systemPackages = with pkgs; [

	xclip
	kitty
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

	flameshot

	pavucontrol

	playerctl

	feh
	imlib2

	dotnet-sdk_8
	dotnet-aspnetcore_8
	python3
	cargo
	#nodejs_21
	gcc
	lua
	go

	gnumake42

	vivaldi

	lxappearance
  ];
}
