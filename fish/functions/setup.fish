function setup
    fish_add_path ~/.local/bin
    set -U EDITOR vim
    set -U fish_key_bindings fish_vi_key_bindings
    setup_theme

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install --no-bash --no-zsh --key-bindings --no-completion --no-update-rc
    fish_add_path ~/.fzf/bin
end
