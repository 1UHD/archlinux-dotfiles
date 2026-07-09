--system layers
hl.layer_rule({
    match = { class = "selection" },
    no_anim = true
})

hl.layer_rule({
    match = { class = "notification" },
    blur = true,
    ignore_alpha = 0.69 --this fixes hyprshots selection being blurred. also funny 'cause 69
})

--app rules
hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0
})

hl.layer_rule({
    match = { namespace = "rofi" },
    blur = true,
    --ignore_alpha = 0
})

hl.layer_rule({
    match = { namespace = "rdock" },
    blur = true,
    ignore_alpha = 0
})

hl.layer_rule({
    match = { namespace = "rust-muted-overlay" },
    blur = true
})

hl.window_rule({
    match = { class = "vesktop" },
    workspace = "6 silent",
})

hl.window_rule({
    match = { class = "org.pwmt.zathura" },
    idle_inhibit = "focus"
})
