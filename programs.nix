{ pkgs, config, lib, ...}:

{
	programs.gamemode.enable = true;
	programs.ssh.askPassword = "";
	programs.dconf.enable = true;
#	programs.slock.enable = true;

	programs.starship = {
		enable = true;
		};

	programs.git = {
		enable = true;
	};

	programs.fish = {
		enable = true;
	};

	programs.neovim = {
		enable = true;
		defaultEditor = true;
	};
}
