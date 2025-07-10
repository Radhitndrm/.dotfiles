-- return {
--   'navarasu/onedark.nvim',
--   priority = 1000,
--   config = function()
--     require('onedark').setup {
--       style = 'darker',
--     }
--     require('onedark').load()
--   end,
-- }

return {
  'shaunsingh/moonlight.nvim',
  priority = 1000,
  lazy = false,
  config = function()
    -- Aktifkan tema moonlight
    vim.cmd.colorscheme 'moonlight'

    -- Tambahan untuk transparansi
    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'StatusLine', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'LineNr', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'EndOfBuffer', { bg = 'none' })
  end,
}
