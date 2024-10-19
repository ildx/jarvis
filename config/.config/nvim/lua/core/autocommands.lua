-- [[ Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight on yank
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight on yank",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Better scrolloff
--  See `:help 'scrolloff'`
vim.api.nvim_create_autocmd({
  "CursorMoved",
  "CursorMovedI",
  "BufEnter",
}, {
  desc = "Better scrolloff",
  group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
  callback = function()
    local wh = vim.api.nvim_win_get_height(0)
    local off = math.min(vim.o.scrolloff, math.floor(wh / 2))
    local dist = vim.fn.line "$" - vim.fn.line "."
    local rem = vim.fn.line "w$" - vim.fn.line "w0" + 1
    if dist < off and wh - rem + dist < off then
      local view = vim.fn.winsaveview()
      view.topline = view.topline + off - (wh - rem + dist)
      vim.fn.winrestview(view)
    end
  end,
})
