require "nvchad.options"

-- add yours here!
local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true
o.scrolloff = 8
o.sidescrolloff = 8
o.wrap = false
o.swapfile = false
o.splitright = true
-- o.lazyredraw =

vim.loader.enable(true)

o.foldenable = true
o.foldlevel = 99
vim.wo.foldmethod = "syntax"
-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- getting some errors

o.foldtext = ""
vim.opt.foldcolumn = "0"
-- vim.opt.fillchars:append({fold = " "})
vim.opt.fillchars:append { eob = " ", fold = " ", foldopen = "", foldsep = " ", foldclose = "", lastline = " " }
vim.opt.shell = "/usr/bin/fish"
