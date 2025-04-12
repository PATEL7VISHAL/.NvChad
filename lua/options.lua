require "nvchad.options"

-- add yours here!
local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.scrolloff = 8
o.sidescrolloff = 8
o.swapfile = false
-- o.lazyredraw =

vim.loader.enable(true)

vim.o.foldenable = true
vim.o.foldlevel = 99
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldtext = ""
vim.opt.foldcolumn = "0"
-- vim.opt.fillchars:append({fold = " "})
vim.opt.fillchars:append { eob = " ", fold = " ", foldopen = "", foldsep = " ", foldclose = "", lastline = " " }
