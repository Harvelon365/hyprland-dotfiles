--------- MONITORS ---------

--- UNI CONFIG ---

-- hl.monitor({
--     output = "DP-2",
--     mode = "1920x1080@165",
--     position = "0x0",
--     scale = 1,
--     bitdepth = 10,
--     supports_hdr = 1,
-- })

-- hl.monitor({
--     output = "HDMI-A-1",
--     mode = "1920x1080@60",
--     position = "1920x0",
--     scale = 1,
-- })

--- HOME CONFIG ---

hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = 1
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60",
    position = "-1920x0",
    scale = 1,
})