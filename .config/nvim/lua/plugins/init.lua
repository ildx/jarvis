-- [[ Plugins ]]
--  Load all plugins from the `plugins/config` directory

--  To check the current status of plugins, run `:Lazy`
--  To get help in the menu, press `?` (press `q` to exit)
--  To update plugins, run `:Lazy update`

local ok, lazy = pcall(require, "lazy")
if not ok then
  return
end

return lazy.setup("plugins.config")
