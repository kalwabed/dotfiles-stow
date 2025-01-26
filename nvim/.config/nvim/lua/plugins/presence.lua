return {
  -- discord presence
  {
    "jiriks74/presence.nvim",
    event = "UIEnter",
    opts = {
      neovim_image_text = "neovim",
      workspace_text = "📁 %s",
      -- workspace_text = "what project?",
      editing_text = "📝 %s",
    },
  },
}
