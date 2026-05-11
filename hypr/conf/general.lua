hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        gaps_workspaces = 50,

        border_size = 2,

        col = {
            active_border = "rgb(7AA2F7)",
            inactive_border = "rgba(595959aa)"
        },

        resize_on_border = true,
        hover_icon_on_border = true,

        layout = "dwindle",

        snap = {
            enabled = true
        }
    },

    xwayland = {
        force_zero_scaling = true
    },

    misc = {
        animate_manual_resizes = true,
        disable_hyprland_logo = true
    },

    decoration = {
        rounding = 0,

        shadow = {
            enabled = true,
            range = 10
        }
    }
})
