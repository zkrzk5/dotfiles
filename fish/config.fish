if status is-interactive
    set fish_greeting

    if type -q fastfetch
        fastfetch
    end

    abbr -a v nvim
    abbr -a cdn "cd ~/.config/nvim"
    abbr -a cdw "cd ~/.config/waybar"
    abbr -a pacinst "sudo pacman -S"
    abbr -a pacupd "sudo pacman -Syu"
    abbr -a pacrem "sudo pacman -Rns"
end

starship init fish | source

set -g fish_color_normal d4be98
set -g fish_color_command a9b665
set -g fish_color_keyword ea6962
set -g fish_color_quote e78a4e
set -g fish_color_redirection 7daea3
set -g fish_color_end d8a657
set -g fish_color_error ea6962
set -g fish_color_param d3869b
set -g fish_color_comment 928374
set -g fish_color_selection --background=8ec07c --foreground=282828
set -g fish_color_search_match --background=8ec07c --foreground=282828
set -g fish_color_operator 7daea3
set -g fish_color_escape ea6962
set -g fish_color_autosuggestion 928374

set -gx EDITOR nvim
set -gx VISUAL nvim
