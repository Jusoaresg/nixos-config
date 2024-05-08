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
		defaultSession = "none+xmonad";
		};

  windowManager.xmonad = {
	enable = true;
	enableContribAndExtras = true;
	extraPackages = haskellPackages: [
		haskellPackages.xmobar
	];

	 ghcArgs = [
		"-hidir /tmp" # place interface files in /tmp, otherwise ghc tries to write them to the nix store
		"-odir /tmp" # place object files in /tmp, otherwise ghc tries to write them to the nix store
	];

	};

#  windowManager.awesome = {
#  	enable = true;
#	luaModules = with pkgs.luaPackages; [
#		luarocks
#		luadbi-mysql
#		];
#		};
	};


}
