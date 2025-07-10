-- Music Pop up
-----------------------------------------------
-- A rofi popup script for music! for awesomewm
-- use the dashboard instead...
-- please 🙏

local popup = {}

-- requirements
local awful = require "awful"

-- buttons for playing state
local play_buttons = { "", "", "" }
local play_buttons_box = play_buttons[1] .. '\n' .. play_buttons[2] .. '\n' .. play_buttons[3]

-- buttons for paused state
local pause_buttons = { "", "", "" }
local pause_buttons_box = pause_buttons[1] .. '\n' .. pause_buttons[2] .. '\n' .. pause_buttons[3]

-- playerctl commands
local commands = {
    "rmpc next",
    "rmpc togglepause",
    "rmpc prev",
}

-- execute
function popup.execute()
    -- First get the player state
    awful.spawn.easy_async([[bash -c 'rmpc status | jq -r .state']], function(state)
        -- Define which buttons to use based on state
        local buttons_to_use
        local buttons_box_to_use

        if state:match("Play") then
            buttons_to_use = play_buttons
            buttons_box_to_use = play_buttons_box
        else
            buttons_to_use = pause_buttons
            buttons_box_to_use = pause_buttons_box
        end

        -- Create and execute rofi command with correct buttons
        local rofi_cmd = [[bash -c 'printf "]] .. buttons_box_to_use .. [[" | rofi -theme .config/awesome/misc/scripts/Rofi/three-vertical.rasi -dmenu -selected-row 1']]

        awful.spawn.easy_async(rofi_cmd, function(stdout)
            -- check what the output is with current buttons
            for i, v in ipairs(buttons_to_use) do
                if v == stdout:gsub("%s+", "") then
                    awful.spawn.with_shell(commands[i], false)
                end
            end
        end)
    end)
end

return popup
