{ pkgs, config, lib, ...}:

{
	programs.ssh.askPassword = "";

	programs.git = {
		enable = true;
		};

	programs.fish = {
		enable = true;
#		promptInit = ''
#				starship init fish | source
#
#				zoxide init fish | source
#
#				bind \e\[1\;5A "commandline -i '|'"
#				bind \e\[1\;5B 'commandline -i "\\\"'
#
#				if status is-interactive
#				end
#			'';
#		shellInit = ''
#				function fish_greeting
#					end
#			'';
		};

	programs.neovim = {
		enable = true;
		defaultEditor = true;
		};
}
