-- bootstrap lazy.nvim, LazyVim and your plugins
require("config")
require("config.lazy")

----------
---CUSTOM MACROS---
----------

local esc = vim.api.nvim_replace_termcodes("<Esc>", true, true, true)

vim.api.nvim_create_augroup("JSLogMacro", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "JSLogMacro",
  pattern = { "javascript", "typescript" }, -- This will trigger *js and *ts files.
  callback = function()
    local random_num = math.random(100, 999)
    -- vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa " .. random_num .. esc .. "la, " .. esc .. "pl")
    vim.fn.setreg("l", "yoconsole.log('" .. esc .. "pa " .. random_num .. ":', " .. esc .. "pa)" .. esc)
  end,
})
