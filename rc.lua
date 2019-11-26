pcall(require, "luarocks.loader")
gears = require('gears')
keydefine = require('keydefine')
beautiful = require('beautiful')
beautiful.init(gears.filesystem.get_configuration_dir() .. 'themes/default/theme.lua')
local naughty = require('naughty')

function notify (msg)
    naughty.notify(
            {
                border_width = 0,
                position = 'top_right',
                title = 'New message!',
                text = msg
            }
        )
end

local desktop = require('desktop')

desktop:init()