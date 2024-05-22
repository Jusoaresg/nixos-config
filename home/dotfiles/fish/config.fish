starship init fish | source

zoxide init fish | source

bind \e\[1\;5A "commandline -i '|'"
bind \e\[1\;5B 'commandline -i "\\\"'

bind \cd delete-char

alias neofetch 'fastfetch'
alias open 'xdg-open'

alias ngs 'sudo nixos-rebuild switch --flake /etc/nixos#default' 

alias fzfPrev 'fzf --preview "bat --style=numbers --color=always --line-range :500 {}"'

alias pyEnv 'nix-shell ~/.config/GlobalScripts/pythonEnv.nix --run fish'

function fish_greeting
end

if status is-interactive
end

set -gx PATH ~/.npm-packages/bin $PATH


set -l foreground DCD7BA normal
set -l selection 2D4F67 brcyan
set -l comment 727169 brblack
set -l red C34043 red
set -l orange FF9E64 brred
set -l yellow C0A36E yellow
set -l green 76946A green
set -l purple 957FB8 magenta
set -l cyan 7AA89F cyan
set -l pink D27E99 brmagenta

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
