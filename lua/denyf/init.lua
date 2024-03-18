local M = {}
M.version = "v0.10.4"

---@type UserConfig
M.config = require("denyf.config")
--- @param user_config UserConfig
function M.setup(user_config)
	require("denyf.utils.global")
	require("denyf.basic")
	-- user config override
	M.config = vim.tbl_deep_extend("force", M.config, user_config)
	require("denyf.env").init(M.config)
	require("denyf.keybindings")
	local pluginManager = require("denyf.lazy")
	if not pluginManager.avaliable() then
		pluginManager.install()
	end
	pluginManager.setup()
	require("denyf.colorscheme").reset()
	require("denyf.autocmds")
	require("denyf.lsp")
	require("denyf.cmp")
	require("denyf.format")
	require("denyf.dap")
	require("denyf.utils.color-preview")
	if M.config.fix_windows_clipboard then
		require("utils.fix-yank")
	end
end

return M
