if status is-interactive
    # 1. Clear default text
    set fish_greeting

    # 2. Launch your clean, minimal fastfetch layout automatically
    if type -q fastfetch
        fastfetch
    end

    # 3. High-Speed Abbreviations (Better than aliases because they expand inline as you type)
    abbr -a v nvim
    abbr -a cdn "cd ~/.config/nvim"
    abbr -a cdw "cd ~/.config/waybar"
    # Package management shorthands
    abbr -a pacinst "sudo pacman -S"
    abbr -a pacupd "sudo pacman -Syu"
    abbr -a pacrem "sudo pacman -Rns"
end

# --- Prompt Initialization ---
starship init fish | source

# --- Gruvbox Material Palette Syntax Highlighting ---
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

# --- Environment Variables ---
set -gx EDITOR nvim
set -gx VISUAL nvim