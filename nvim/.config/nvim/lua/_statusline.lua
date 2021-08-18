local function not_split()
  return vim.fn.winwidth(0) > 90
end
local hide = {sections = {}, filetypes = {'NvimTree', 'packer'}}

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'custom',
    component_separators = '',
    section_separators = '',
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = {{'mode', upper = true}},
    lualine_b = {{'filename', path = 1, truncate = 0}},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {{'filetype', colored = false}},
    lualine_z = {
      {
        'branch',
        icon = '',
        condition = not_split,
      }
    },
  },
  inactive_sections = {
    lualine_a = {{'filename', path = 1}},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {hide, 'quickfix'}
}
