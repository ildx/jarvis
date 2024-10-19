--[[

Version: 1.0.0
Author: Iivari Leinonen <iivari.leinonen@gmail.com>

--]]

-- [[ Leader ]]
--  Set <space> as the leader key
--  See `:help mapleader`
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Plugin manager ]]
--  See https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
local lazyrepo = "https://github.com/folke/lazy/lazy.nvim.git"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
end --@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("core.keymaps")
require("core.options")
require("core.autocommands")
require("plugins")
