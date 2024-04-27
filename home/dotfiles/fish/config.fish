starship init fish | source

zoxide init fish | source

bind \e\[1\;5A "commandline -i '|'"
bind \e\[1\;5B 'commandline -i "\\\"'

function fish_greeting
end

if status is-interactive
end
