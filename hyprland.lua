--------- MAIN CONFIG ---------

--- GLOBAL VARIABLES ---

ModulesHome = "modules."
ScriptsHome = os.getenv("HOME") .. "/.config/hypr/scripts/"
Terminal = "alacritty"
Browser = "zen-browser"
FileManager = "thunar"
Menu = "rofi -show drun"
PowerMenu = "rofi -show p -modi p:'~/.local/bin/rofi-power-menu --choices=lockscreen/suspend/reboot/shutdown'"
CalcMenu = "rofi -show calc -modi calc -no-show-match -no-sort"
ScreenshotTool = "hyprshot -m region --freeze"
Waybar = "waybar --config " .. os.getenv("HOME") .. "/.config/hypr/waybar/config.jsonc --style " .. os.getenv("HOME") .. "/.config/hypr/waybar/style.css"

--- EXTERNAL MODULES ---

require(ModulesHome .. "startup")
require(ModulesHome .. "appearance")
require(ModulesHome .. "input")
require(ModulesHome .. "keybinds")
require(ModulesHome .. "misc")
require(ModulesHome .. "monitors")
require(ModulesHome .. "windows")
require(ModulesHome .. "workspaces")

--- DEBUG ---

hl.config({
    debug = {
        disable_logs = false
    }
})