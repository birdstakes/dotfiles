function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
    if functions -q fzf_key_bindings
        fzf_key_bindings
    end
end
