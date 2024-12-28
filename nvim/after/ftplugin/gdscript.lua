-- local timer = vim.uv.new_timer()
-- timer:start(
--   1000,
--   0,
--   vim.schedule_wrap(function()
--     require('lspconfig').gdscript.setup {}
--     print 'Working'
--   end)
-- )
require('lspconfig').gdscript.setup {}
