{ pkgs, ... }:

let
  antigravity-ultra = pkgs.writeShellScriptBin "antigravity-ultra" ''
    # Directory dedicated to the secondary profile
    PROFILE_DIR="$HOME/.local/share/antigravity-profiles/ultra"
    mkdir -p "$PROFILE_DIR"/{config,data,state,cache}

    export XDG_CONFIG_HOME="$PROFILE_DIR/config"
    export XDG_DATA_HOME="$PROFILE_DIR/data"
    export XDG_STATE_HOME="$PROFILE_DIR/state"
    export XDG_CACHE_HOME="$PROFILE_DIR/cache"

    exec antigravity-ide "$@"
  '';

  antigravity-ultra-desktop = pkgs.makeDesktopItem {
    name = "antigravity-ultra";
    desktopName = "Antigravity (Ultra)";
    genericName = "AI Development Environment";
    exec = "antigravity-ultra";
    terminal = false;
    categories = [ "Development" ];
  };
in
{
  environment.systemPackages = [
    antigravity-ultra
    antigravity-ultra-desktop
  ];
}
