local gears = require("gears")
local awful = require("awful")
local menubar = require("menubar")


local groupName = "Programs"

return gears.table.join(
    -- Terminal
    awful.key({ modkey,           }, "Return", function () awful.spawn(terminal) end,
              {description = "open a terminal", group = groupName}),

    -- Prompt
    awful.key({ modkey },            "r",     function () awful.screen.focused().mypromptbox:run() end,
              {description = "run prompt", group = groupName}),

    -- Menubar
    awful.key({ modkey }, "a", function() menubar.show() end,
              {description = "show the menubar", group = groupName})
)
