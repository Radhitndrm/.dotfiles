return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- ikon
		"MunifTanjim/nui.nvim",
	},
	cmd = "Neotree",
	keys = {
		{ "<leader>e", ":Neotree reveal<CR>", desc = "NeoTree reveal", silent = true },
	},
	opts = {
		filesystem = {
			window = {
				mappings = {
					["<leader>e"] = "close_window",
				},
			},
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = true,
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)

		-- Highlight groups NeoTree dengan background transparan
		local neotree_transparent_groups = {
			"NeoTreeNormal",
			"NeoTreeNormalNC",
			"NeoTreeEndOfBuffer",
			"NeoTreeWinSeparator",
			"NeoTreeCursorLine",
			"NeoTreeDirectoryName",
			"NeoTreeDirectoryIcon",
			"NeoTreeFileName",
			"NeoTreeFloatBorder",
			"NeoTreeTitleBar",
		}

		for _, group in ipairs(neotree_transparent_groups) do
			vim.api.nvim_set_hl(0, group, { bg = "none" })
		end

		-- Warna khusus untuk nama file (sesuai tema alam/hutan)
		vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#A3BE8C" }) -- hijau daun lembut
		vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = "#88C0D0" }) -- biru muda untuk file terbuka
		vim.api.nvim_set_hl(0, "NeoTreeFileNameModified", { fg = "#EBCB8B" }) -- kuning hangat untuk file diubah

		-- Opsional: atur warna separator agar lembut dan transparan
		vim.cmd([[highlight NeoTreeWinSeparator guibg=none guifg=#5c6a72]]) -- warna netral dari everforest
	end,
}
