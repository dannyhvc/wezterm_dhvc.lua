local wezterm = require 'wezterm';
local mux = wezterm.mux

wezterm.on('gui-startup', function()
    local tab, pane, window = mux.spawn_window{}
    window:gui_window():toggle_fullscreen()
end)

local keys = {
    {
        key="\\", 
        mods="CTRL", 
        action=wezterm.action{
            SplitHorizontal={domain="CurrentPaneDomain"}
        }
    },
    {
        key="-",
        mods="CTRL",
        action=wezterm.action{
            SplitVertical={domain="CurrentPaneDomain"}
        }
    },
};

return {
    enable_tab_bar = true,
    keys = keys,
    font = wezterm.font("CaskaydiaCove Nerd Font Mono"),
    window_background_opacity = 0.8,
    default_prog = {"nu"}
}

