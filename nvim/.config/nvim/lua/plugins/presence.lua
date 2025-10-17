return {
  -- discord presence
  {
    "jiriks74/presence.nvim",
    event = "UIEnter",
    opts = {
      neovim_image_text = "Neovim",
      main_image = "neovim",
      workspace_text = function()
        local hour = tonumber(os.date("%H"))
        local status = hour >= 22 and "🌙 Late night coding"
          or hour >= 18 and "🌆 Evening session"
          or hour >= 12 and "☀️ Afternoon coding"
          or hour >= 5 and "🌅 Morning productivity"
          or "🌙 Midnight hacking"

        return status
      end,
      editing_text = "📝 %s",
    },
  },
  -- {
  -- "vyfor/cord.nvim",
  -- build = ":Cord update",
  -- opts = {
  --   editor = {
  --     client = "lazyvim",
  --     tooltip = "LazyVim",
  --   },
  --   display = {
  --     theme = "catppuccin",
  --     flavor = "accent",
  --   },
  --   variables = true,
  --   text = {
  --     workspace = function()
  --       local hour = tonumber(os.date("%H"))
  --       local status = hour >= 22 and "🌙 Late night coding"
  --         or hour >= 18 and "🌆 Evening session"
  --         or hour >= 12 and "☀️ Afternoon coding"
  --         or hour >= 5 and "🌅 Morning productivity"
  --         or "🌙 Midnight hacking"
  --
  --       return status
  --     end,
  --   },
  --   idle = {
  --     details = function(opts)
  --       return string.format("Taking a break from %s", opts.workspace)
  --     end,
  --   },
  -- },
}
