fish_add_path ~/go/bin

if status is-interactive
    # Commands to run in interactive sessions can go here

    # only run fastfetch when kitty startup
    if test "$KITTY_WINDOW_ID" = "1"
        fastfetch --config ~/.config/fastfetch/config_without_publicip.jsonc
    end
end

starship init fish | source
