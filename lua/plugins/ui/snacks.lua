return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,

        sections = {
            {
                section = "header",
            },
            {
                section = "keys",
            },
            {
                section = "startup",
            },
            {
                section = "recent_files",
                title = "Recent Files",
                pane = 2,
                icon = " ",
                limit = 5,
                padding = 1,
            },
            {
                section = "projects",
                title = "Projects",
                pane = 2,
                icon = " ",
                limit = 5,
                padding = 1,
            },
            {
                section = "terminal",
                title = "Git Status",
                pane = 2,
                icon = " ",
                enabled = function()
                    return Snacks.git.get_root() ~= nil
                end,
                cmd = "git status --short --branch --renames",
                height = 5,
                padding = 1,
                ttl = 5 * 60,
                indent = 3,
            },
        },

        preset = {
          pick = function(cmd, opts)
            return require("snacks").picker[cmd](opts)
          end,

          header = [[
   ◉ ──▶ ◉ ──▶ ◉ ──▶ ◉
    │      │      │
   ◉ ──▶ ◉ ──▶ ◉ {──▶ ◉

        ██╗ ██████╗ ███████╗██╗  ██╗
        ██║██╔═══██╗██╔════╝██║  ██║
        ██║██║   ██║███████╗███████║
   ██   ██║██║   ██║╚════██║██╔══██║
   ╚█████╔╝╚██████╔╝███████║██║  ██║
    ╚════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝

        > pipeline ready ✓
          ]],

          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = " ", key = "f", desc = "Find File", action = function() require("snacks").picker.files() end },
            { icon = " ", key = "g", desc = "Find Text", action = function() require("snacks").picker.grep() end },
            { icon = " ", key = "r", desc = "Recent Files", action = function() require("snacks").picker.recent() end },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "c", desc = "Config", action = function()
              require("snacks").picker.files({ cwd = vim.fn.stdpath("config") })
            end },
            { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },

      terminal = {
          enabled = true,
          auto_insert = true,
          reuse = true,
          win = {
              position = "bottom",
              height = 0.3,
              border = "top",
          },
      },
        
      indent = { enabled = true },
      input = { enabled = true },
      notifier = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      words = { enabled = true },

      -- optional nice extras
      notifier = { enabled = true },
      quickfile = { enabled = true },
      statuscolumn = { enabled = true },
    },
  },
}
