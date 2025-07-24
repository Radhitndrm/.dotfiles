return {
	"neanias/everforest-nvim",
	version = false,
	priority = 1000,
	lazy = false,
	config = function()
		require("everforest").setup({
			background = "soft", -- bisa diganti dengan "medium" atau "hard"
			transparent_background = true,
			italics = true,
		})

		vim.cmd.colorscheme("everforest")

		-- Atur transparansi manual untuk elemen tertentu (seperti moonlight)
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
	end,
}

-- return {
-- 	"shaunsingh/moonlight.nvim",
-- 	priority = 1000,
-- 	lazy = false,
-- 	config = function()
-- 		vim.cmd.colorscheme("moonlight")
--
-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- 		vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
-- 	end,
-- }
