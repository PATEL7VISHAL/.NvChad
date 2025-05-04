dofile(vim.g.base46_cache .. "todo")

local M = {}
M.opts = {
  highlight = {
    after = "",
  },
}

M.config = function(_, opts)
  require("todo-comments").setup(opts)
  local todo_comments = require "todo-comments"
  local map = vim.keymap.set
  map("n", "]t", function()
    todo_comments.jump_next()
  end, { desc = "Next todo comment" })
  map("n", "[t", function()
    todo_comments.jump_prev()
  end, { desc = "Previous todo comment" })
end

return M
