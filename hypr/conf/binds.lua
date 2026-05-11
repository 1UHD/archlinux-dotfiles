-- applications
hl.bind("SUPER + X", hl.dsp.exec_cmd("ghostty"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + TAB", hl.dsp.exec_cmd("rofi -show window"))
hl.bind("SUPER + V",
    hl.dsp.exec_cmd("cliphist list | rofi -dmenu -window-title \"Clipboard\" | cliphist decode | wl-copy"))

-- window management
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.kill())
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + L", hl.dsp.window.float())

-- evil shenanigans (using the mouse)
hl.bind("SUPER + SHIFT + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + SHIFT + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- moving between windows
hl.bind("SUPER + LEFT", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + RIGHT", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + UP", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + DOWN", hl.dsp.focus({ direction = "down" }))

-- changing window size
hl.bind("SUPER + SHIFT + LEFT", hl.dsp.window.resize({
    x = -30, y = 0, relative = true
}), { repeating = true })
hl.bind("SUPER + SHIFT + RIGHT", hl.dsp.window.resize({
    x = 30, y = 0, relative = true
}), { repeating = true })
hl.bind("SUPER + SHIFT + UP", hl.dsp.window.resize({
    x = 0, y = -30, relative = true
}), { repeating = true })
hl.bind("SUPER + SHIFT + DOWN", hl.dsp.window.resize({
    x = 0, y = 30, relative = true
}), { repeating = true })

-- workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- screenshot
hl.bind("SUPER + S", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprshot -m output"))

-- volume control & mute
hl.bind("SHIFT + F12", hl.dsp.exec_cmd("~/.config/hypr/script/audio_mute.sh"))
hl.bind("code:122", hl.dsp.exec_cmd("pamixer -d 5 && ~/.config/hypr/script/volume_change.sh"))
hl.bind("code:123", hl.dsp.exec_cmd("pamixer -i 5 && ~/.config/hypr/script/volume_change.sh"))
hl.bind("SUPER + M", hl.dsp.exec_cmd("~/.config/hypr/script/mic_mute.sh"))

-- music player
hl.bind("SUPER + I", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("SUPER + O", hl.dsp.exec_cmd("playerctl next"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("~/.config/hypr/script/track_pause.sh"))
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("~/.config/hypr/script/currently_playing.sh"))
