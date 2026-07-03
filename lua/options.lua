require "nvchad.options"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
o.background = "dark"
vim.opt.relativenumber = true
vim.opt.list = true
vim.opt.listchars = {
  eol = '↴',
}

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
