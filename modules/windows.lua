--------- WINDOW RULES ---------

hl.window_rule({
    match = {
        class = ".*"
    },
    suppress_event = "maximize"
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- hl.window_rule({
--     match = {
--         class = "^(zen)$"
--     },
--     workspace = "5",
--     opaque = true
-- })

hl.window_rule({
    match = {
        class = "^(jetbrains-.*)",
        title = "^(win.*)"
    },
    float = true
})

hl.window_rule({
    match = {
        class = "^(jetbrains-.*)",
    },
    no_initial_focus = true
})

hl.window_rule({
    match = {
        title = "^(Picture-in-Picture.*)$",
    },
    float = true,
    pin = true,
    size = { 685, 385 }
})

hl.window_rule({
    match = {
        class = "^(steam)$",
        title = "^()$",
    },
    stay_focused = true,
    min_size = { 1, 1 }
})

-- hl.window_rule({
--     match = {
--         class = "^(steam_app_2828500)$"
--     },
--     float = true
-- })