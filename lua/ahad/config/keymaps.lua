function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end


vim.g.leader = " "

-- exit insert mode with jk
Map("i", "jk", "<ESC>", {desc = "Exit insert mode"})
