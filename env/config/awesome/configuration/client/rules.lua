local awful = require('awful')
local beautiful = require('beautiful')
local client_keys = require('configuration.client.keys')
local client_buttons = require('configuration.client.buttons')

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
awful.rules.rules = {
    -- All clients will match this rule.
    {
        rule = {},
        except_any = { class = { "Polybar" } },
        properties = {
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = awful.client.focus.filter,
            raise = true,
            keys = client_keys,
            buttons = client_buttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap + awful.placement.no_offscreen
        }
    },

    -- Floating clients.
    {
        rule_any = {
            instance = {
                "DTA",   -- Firefox addon DownThemAll.
                "copyq", -- Includes session name in class.
                "pinentry",
            },
            class = {
                "Blueman-manager",
                "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
            },
            name = {
                "Event Tester", -- xev.
            },
            role = {
                "pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
            }
        },
        properties = { floating = true }
    },

    -- Add titlebars to normal clients and dialogs
    {
        rule_any = { type = { "normal", "dialog" }
        },
        properties = { titlebars_enabled = false }
    },
}
