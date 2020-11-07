-- debug_print command does only print to stdout
-- if devilspie2 is run using the --debug option

debug_print( "get_window_name:                      " .. get_window_name())
debug_print( "get_application_name:                 " .. get_application_name())
debug_print( "get_window_geometry:                  " .. get_window_geometry())
debug_print( "get_window_client_geometry:           " .. get_window_client_geometry())
debug_print( "get_window_type:                      " .. get_window_type())
debug_print( "get_class_instance_name:              " .. get_class_instance_name())
debug_print( "get_window_role:                      " .. get_window_role())
debug_print( "get_window_xid:                       " .. get_window_xid())
debug_print( "get_window_class:                     " .. get_window_class())
debug_print( "get_workspace_count:                  " .. get_workspace_count())
screen_x, screen_y = get_screen_geometry()
debug_print( "get_screen_geometry                   " .. screen_x .. "x" .. screen_y )
window_x, window_y, window_w, window_h = xywh()
debug_print( "xywh:                                 " .. window_x .. "," .. window_y .."+" .. window_w .. "+" .. window_h )
-- debug_print( "get_screen_geometry:                  " .. get_screen_geometry())
-- debug_print( "get_window_has_name:                  " .. get_window_has_name())
-- debug_print( "get_window_is_maximized:              " .. get_window_is_maximized())
-- debug_print( "get_window_is_maximized_vertically:   " .. get_window_is_maximized_vertically())
-- debug_print( "get_window_is_maximized_horizontally: " .. get_window_is_maximized_horizontally())
-- debug_print( "get_window_property:                  " .. get_window_property())
-- debug_print( "get_window_fullscreen:                " .. get_window_fullscreen())
debug_print( "\n" )

-- Thunderbird
if (get_window_name() == "Mozilla Thunderbird" or get_application_name() == "Thunderbird") then
    undecorate_window()
    set_window_workspace(5)
    maximize_vertically()
    maximize_horizontally()
end

-- Spotify
if (get_application_name() == "Spotify" or get_class_instance_name() == "spotify") then
    undecorate_window()
    set_window_workspace(7)
    maximize_vertically()
    maximize_horizontally()
end

-- Skype
if (get_window_name() == "Skype" or get_class_instance_name() == "skype") then
    undecorate_window()
    set_window_workspace(6)
    maximize_vertically()
    maximize_horizontally()
end

-- Idea
if (get_class_instance_name() == "jetbrains-idea") then
    undecorate_window()
    set_window_workspace(3)
    maximize_vertically()
    maximize_horizontally()
end

-- Slack
if (get_class_instance_name() == "slack") then
    undecorate_window()
    set_window_workspace(1)
    maximize_vertically()
    maximize_horizontally()
end

-- Google Chrome
if (get_class_instance_name() == "google-chrome") then
    undecorate_window()
    set_window_workspace(4)
    maximize_vertically()
    maximize_horizontally()
end

if (get_class_instance_name() == "chromium-browser") then
    undecorate_window()
    set_window_workspace(2)
    maximize_vertically()
    maximize_horizontally()
end



