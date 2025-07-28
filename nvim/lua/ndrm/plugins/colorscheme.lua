return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				terminal_colors = true,
				dim_inactive = false,
			},
			palettes = {
				nightfox = {
					bg0 = "#0a0a0a", -- background gelap (cursorline)
					orange = "#ff6b00", -- oranye cerah (tmux orange)
					blue = "#5ad0ff", -- biru cerah (tmux blue)
					green = "#a67c52", -- cokelat kayu
					yellow = "#d6a864", -- krem keemasan
					red = "#e94b28", -- api/asap
					cyan = "#7ca9c0", -- langit biru
					gray = "#3f4a62", -- garis antar pane
				},
			},
			styles = {
				comments = "italic",
				keywords = "NONE",
				functions = "NONE",
				variables = "NONE",
			},
			inverse = {
				match_paren = true,
			},
		})

		vim.cmd("colorscheme nightfox")

		-- ✨ Custom highlight tambahan
		vim.api.nvim_set_hl(0, "Comment", { fg = "#7ca9c0", italic = true }) -- langit biru
		vim.api.nvim_set_hl(0, "Statement", { fg = "#e94b28", bold = true }) -- api/asap
		vim.api.nvim_set_hl(0, "Function", { fg = "#d6a864" }) -- krem keemasan
		vim.api.nvim_set_hl(0, "Identifier", { fg = "#a67c52" }) -- cokelat kayu
		vim.api.nvim_set_hl(0, "Type", { fg = "#ff6740" }) -- oranye cerah
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "#0a0a0a" }) -- background cursor line gelap
		vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3f4a62", bg = "none" }) -- garis antar pane
	end,
}
