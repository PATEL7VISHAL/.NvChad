-- Hide diagnostics in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.diagnostic.enable(false)
  end,
})

-- Re-enable them when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.diagnostic.enable(true)
  end,
})

--NOTE: for hightlight under the cursor
-- vim.api.nvim_set_hl(0, "LspReferenceText", { underline = true })
-- vim.api.nvim_set_hl(0, "LspReferenceRead", { underline = true })
-- vim.api.nvim_set_hl(0, "LspReferenceWrite", { underline = true })

-- vim.cmd [[
--   augroup lsp_document_highlight
--     autocmd!
--     autocmd CursorHold  * lua vim.lsp.buf.document_highlight()
--     autocmd CursorMoved * lua vim.lsp.buf.clear_references()
--   augroup END
-- ]]
