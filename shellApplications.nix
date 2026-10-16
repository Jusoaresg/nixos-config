{ pkgs, ... }:

let
  agy-box = pkgs.writeShellApplication {
    name = "agy-box";
    runtimeInputs = [ pkgs.bubblewrap ];
    text = ''
      PROJ_DIR="$(pwd)"

      exec bwrap \
        --ro-bind / / \
        --dev /dev \
        --proc /proc \
        --tmpfs /tmp \
        --tmpfs "$HOME" \
        --dir "$HOME/.cache" \
        --tmpfs "$HOME/.cache" \
        --bind "$PROJ_DIR" "$PROJ_DIR" \
        --share-net \
        agy "$@"
    '';
  };
in
{
  environment.systemPackages = [
    agy-box
  ];
}
