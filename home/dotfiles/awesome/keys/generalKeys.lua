local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

local mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "open terminal", terminal }
                                  }
                        })

local groupName = "General Keys"

return gears.table.join(

awful.key({ modkey,           }, "w", function () mymainmenu:show() end,
      {description = "show main menu", group = groupName}),

    awful.key({ modkey,           }, "s",      hotkeys_popup.show_help,
              {description="show help", group= groupName}),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
        end,
        {description = "focus next by index", group = groupName}
    ),

    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
        end,
        {description = "focus previous by index", group = groupName}
    ),

    awful.key({ modkey, "Control" }, "r", awesome.restart,
              {description = "reload awesome", group = groupName}),

    awful.key({ modkey, "Shift"   }, "e", awesome.quit,
              {description = "quit awesome", group = groupName})

)
