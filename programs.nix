{ pkgs, config, lib, ...}:

{
	programs.ssh.askPassword = "";
	programs.dconf.enable = true;

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
