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
	displayManager = { 
		defaultSession = "none+awesome";
		};

  windowManager.xmonad = {
	enable = true;
	enableContribAndExtras = true;
	extraPackages = haskellPackages: [
		haskellPackages.xmobar
	];
	};

  windowManager.awesome = {
  	enable = true;
	luaModules = with pkgs.luaPackages; [
		luarocks
		luadbi-mysql
		];
		};
	};


}
