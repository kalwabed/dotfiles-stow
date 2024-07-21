return {
  -- discord presence
  {
    "jiriks74/presence.nvim",
    event = "UIEnter",
    opts = {
      neovim_image_text = "lazyvim",
      workspace_text = "📁 %s",
      editing_text = "📝 %s",
    },
  },
}
