{ pkgs, config, lib, ...}:

{
  # Configure keymap in X11
  services.xserver = {
    layout = "br";
    xkbVariant = "";
  };

  services.xserver = {
  	enable = true;
	desktopManager = {xterm.enable=false;};
	displayManager = { defaultSession = "none+i3";};

  windowManager.i3 = {
		enable = true;
		extraPackages = with pkgs; [
				dmenu
				i3status
				i3lock
			];
		};
	};

}
