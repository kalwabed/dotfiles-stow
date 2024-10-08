return {
  "nvim-treesitter/nvim-treesitter",
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)

    -- MDX
    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })
    vim.treesitter.language.register("markdown", "mdx")
  end,
}
