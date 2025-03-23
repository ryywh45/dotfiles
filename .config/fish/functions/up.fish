function up
    set_color yellow
    echo "[Update system]"
    set_color normal
    echo -n "Running "
    set_color green
    echo "`sudo dnf upgrade --refresh`"
    set_color normal
    sudo dnf upgrade --refresh
    echo

    set_color yellow
    echo "[Update lazygit]"
    set_color normal
    echo -n "Running "
    set_color green
    echo "`go install github.com/jesseduffield/lazygit@latest`"
    set_color normal
    go install github.com/jesseduffield/lazygit@latest
end
