hl.monitor({
    output = "DP-1",
    mode = "3840x2160@160",
    position = "0x0",
    scale = "1.5",
    bitdepth = 8,
    supports_wide_color = true,
    supports_hdr = true,
    max_luminance = 1000,
    min_luminance = 0,
    sdr_max_luminance = 400,
    sdr_min_luminance = 0,
    cm = "auto",
})

hl.monitor({
    output = "DP-2",
    mode = "3840x2160@60",
    position = "2560x0",
    scale = "1.5",
    transform = 3
})
