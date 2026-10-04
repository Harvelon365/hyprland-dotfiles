--------- AUTOSTART ---------

hl.on("hyprland.start", function ()
    hl.exec_cmd(Terminal)
    hl.exec_cmd("waybar --config " .. os.getenv("HOME") .. ".config/hypr/waybar")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("syncthing --no-browser")
    hl.exec_cmd("shairport-sync")
    hl.exec_cmd("hyprctl setcursor Posy_Cursor_Black 24")
    hl.exec_cmd("systemctl start --user dunst")
    hl.exec_cmd("antimicrox")
end)

--------- ENVIRONMENT VARIABLES ---------

hl.env("HYPRCURSOR_THEME", "Posy_Cursor_Black")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRSHOT_DIR", "/home/harvelon/Documents/Screenshots")