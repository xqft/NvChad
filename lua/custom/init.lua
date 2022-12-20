local opt = vim.opt
local api = vim.api

-- NVIM OPTS --

-- Line number
opt.relativenumber = true

-- Tabs
opt.tabstop     = 2
opt.shiftwidth  = 0
opt.expandtab   = true

-- Searching
opt.ignorecase  = true
opt.smartcase   = true

-- Autocommands

api.nvim_create_augroup("filetype_jsx", { clear = true })
api.nvim_create_autocmd("FileType", {
  group   = "filetype_jsx",
  pattern = { "javascript" },
  command = "set ft=javascriptreact"
})
-- this assumes that every .js file is from a React project.
