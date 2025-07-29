require("lazy").setup({
	"NMAC427/guess-indent.nvim",

	require("ndrm.plugins.gitsigns"),

	require("ndrm.plugins.telescope"),

	require("ndrm.plugins.lspconfig"),

	require("ndrm.plugins.vim-surround"),

	require("ndrm.plugins.vim-matchit"),

	require("ndrm.plugins.conform"),

	require("ndrm.plugins.cmp"),

	require("ndrm.plugins.highlight-color"),

	-- require 'ndrm.plugins.vim-abolish',

	require("ndrm.plugins.autotag"),

	require("ndrm.plugins.namespace"),

	require("ndrm.plugins.harpoon"),

	require("ndrm.plugins.copilot"),

	require("ndrm.plugins.copilot-chat"),

	require("ndrm.plugins.vim-visual-multi"),

	require("ndrm.plugins.toggleterm"),

	require("ndrm.plugins.commentstring"),

	require("ndrm.plugins.toggleterm"),

	require("ndrm.plugins.presence"),

	require("ndrm.plugins.colorscheme"),

	require("ndrm.plugins.todo-comments"),

	require("ndrm.plugins.mini"),

	require("ndrm.plugins.treesitter"),

	require("ndrm.plugins.lint"),

	require("ndrm.plugins.autopairs"),

	require("ndrm.plugins.neo-tree"),

	require("ndrm.plugins.lualine"),
}, {
	ui = {
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et
