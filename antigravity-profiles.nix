{ pkgs, ... }:

let
  antigravity-pat = pkgs.writeShellScriptBin "antigravity-pat" ''
    # Directory dedicated to the secondary profile
    PROFILE_DIR="$HOME/.local/share/antigravity-profiles/pat"
    mkdir -p "$PROFILE_DIR"/{config,data,state,cache}

    export XDG_CONFIG_HOME="$PROFILE_DIR/config"
    export XDG_DATA_HOME="$PROFILE_DIR/data"
    export XDG_STATE_HOME="$PROFILE_DIR/state"
    export XDG_CACHE_HOME="$PROFILE_DIR/cache"

    exec antigravity-ide "$@"
  '';

  antigravity-pat-desktop = pkgs.makeDesktopItem {
    name = "antigravity-pat";
    desktopName = "Antigravity (Pat)";
    genericName = "AI Development Environment";
    exec = "antigravity-pat";
    terminal = false;
    categories = [ "Development" ];
  };
in
{
  environment.systemPackages = [
    antigravity-pat
    antigravity-pat-desktop
  ];
}
