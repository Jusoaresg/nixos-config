{ pkgs, config, ...}:

{
	services.dbus.enable = true;
	xdg.portal.enable = true;
	xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
	services.picom.enable = true;

	services.flatpak.enable = true;
	# Drives services Mainly for external
	services.devmon.enable = true;
	services.gvfs.enable = true;
	services.udisks2.enable = true;


	services.envfs.enable = true;
}
