--------- KEYBINDS ---------

local mainMod = "SUPER"

--- LAUNCH PROGRAMS ---

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(Terminal))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(Browser))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(Menu))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd(PowerMenu))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd(CalcMenu))
hl.bind("PRINT", hl.dsp.exec_cmd(ScreenshotTool))

--- WINDOW CONTROLS ---

hl.bind(mainMod .. " + W", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())

for i = 1, 8 do
    hl.bind(mainMod .. " + " .. i, hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. i, hl.dsp.window.move({ workspace = i}))
end

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

--- MEDIA KEYS ---

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ScriptsHome .. "volume.sh +1"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ScriptsHome .. "volume.sh -1"), { repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ScriptsHome .. "volume.sh mute"))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))

hl.bind("CTRL + SHIFT + F11", hl.dsp.exec_cmd("dunstify -t 2000 -r 9993 \"$(" .. ScriptsHome .. "headset-toggle.sh)\""))

--- MISC ---

hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("killall waybar; " .. Waybar))

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("hyprlight i"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("hyprlight d"))