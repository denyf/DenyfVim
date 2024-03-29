require("denyf").setup({
	-- 颜值即正义
	colorscheme = "tokyonight",

	-- copilot
	cmp = {
		-- 启用 copilot
		copilot = true,
	},

	-- bufferLine
	bufferLine = {
		enable = true,
		keys = {
			-- left / right cycle
			prev = "<C-h>",
			next = "<C-l>",
			-- close current buffer
			close = "<C-w>",
			-- close = "<leader>bc",
			-- close all left / right tabs
			close_left = "<leader>bh",
			close_right = "<leader>bl",
			-- close all other tabs
			close_others = "<leader>bo",
			close_pick = "<leader>bp",
		},
	},

	-- Super windows
	s_windows = {
		enable = true,
		keys = {
			split_vertically = "sv",
			split_horizontally = "sh",
			-- close current
			close = "sc",
			-- close others
			close_others = "so",
			-- jump between windows
			jump_left = { "<A-h>", "<leader>h" },
			jump_right = { "<A-l>", "<leader>l" },
			jump_up = { "<A-k>", "<leader>k" },
			jump_down = { "<A-j>", "<leader>j" },
			-- control windows size
			width_decrease = "s,",
			width_increase = "s.",
			height_decrease = "sj",
			height_increase = "sk",
			size_equal = "s=",
		},
	},

	-- Super Tab
	s_tab = {
		enable = true, -- 默认关闭
		keys = {
			split = "ts",
			prev = "th",
			next = "tl",
			first = "tj",
			last = "tk",
			close = "tc",
		},
	},

	-- 编程
	golang = {
		enable = true,
		lsp = "gopls",
		linter = "golangci-lint",
		formatter = "gofmt",
		format_on_save = true,
	},

	python = {
		enable = true,
		-- can be pylsp or pyright
		lsp = "pylsp",
		-- pip install black
		-- asdf reshim python
		formatter = "black",
		format_on_save = false,
	},

	bash = {
		enable = true,
		lsp = "bashls",
		--  brew install shfmt
		formatter = "shfmt",
		format_on_save = false,
	},

	json = {
		enable = true,
		-- 以下为默认值，可以省略
		lsp = "jsonls",
		---@type "jsonls" | "prettier"
		formatter = "jsonls",
		format_on_save = false,
	},

	markdown = {
		enable = true,
		-- 以下为默认值，可以省略
		mkdnflow = {
			next_link = "gn",
			prev_link = "gp",
			next_heading = "gj",
			prev_heading = "gk",
			-- 进入链接
			follow_link = "gd",
			-- 从链接返回
			go_back = "<C-o>",
			toggle_item = "tt",
		},
		formatter = "prettier",
		-- 保存时格式化默认为false
		format_on_save = false,
		-- 文字长度到达边缘默认自动折行
		wrap = true,
		---:MarkdownPreview 命令打开文章预览默认是 dark 皮肤
		---@type "dark" | "light"
		theme = "dark",
	},

	yaml = {
		enable = true,
	},
})
