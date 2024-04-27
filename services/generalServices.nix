{ pkgs, config, ...}:

{
	services.picom.enable = true;

	# Drives services Mainly for external
	services.devmon.enable = true;
	services.gvfs.enable = true;
	services.udisks2.enable = true;


	services.envfs.enable = true;
}
