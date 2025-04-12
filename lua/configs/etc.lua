vim.g.loaded_node_provider = 0
vim.opt.syntax = "off"
-- vim.o.foldenable = false
vim.o.spell = false
vim.lsp.set_log_level "OFF"

vim.cmd [[
"The slowness of delimiter matching is not caused by vim itself but by the matchparen plugin, 
"which is part of the vim distribution and loaded by default in /etc/vim/vimrc in Debian.
let g:matchparen_timeout = 2
let g:matchparen_insert_timeout = 2
]]
