{ pkgs, config, ...}:

{
	fonts.packages = with pkgs; [
		jetbrains-mono
		nerdfonts
		terminus-nerdfont
		inconsolata-nerdfont
		fira-code-nerdfont
		calibre
		cascadia-code
		material-design-icons
		weather-icons
		ubuntu_font_family
		font-awesome
	];
}
