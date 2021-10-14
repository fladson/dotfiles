local function not_split()
  return vim.fn.winwidth(0) > 90
end
local hide = {sections = {}, filetypes = {'NvimTree', 'packer'}}

local colors = {
  bg           = '#1d1f21',
  fg           = '#c5c8c6',
  red          = '#cc6666',
  green        = '#b5bd68',
  blue         = '#81a2be',
  yellow       = '#f0c674',
  purple       = '#b294bb',
  gray         = '#373b41',
  darkgray     = '#282a2e',
}

local custom = {
  normal = {
    a = {bg = colors.fg, fg = colors.bg, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.fg},
    c = {bg = colors.darkgray, fg = colors.fg},
    x = {bg = colors.darkgray, fg = colors.fg},
    y = {bg = colors.darkgray, fg = colors.fg, gui = 'italic'},
    z = {bg = colors.gray, fg = colors.fg, gui = 'italic'}
  },
  insert = {
    a = {bg = colors.yellow, fg = colors.bg, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.fg},
    c = {bg = colors.darkgray, fg = colors.fg},
    x = {bg = colors.darkgray, fg = colors.fg},
    y = {bg = colors.darkgray, fg = colors.fg, gui = 'italic'},
    z = {bg = colors.gray, fg = colors.fg, gui = 'italic'}
  },
  visual = {
    a = {bg = colors.purple, fg = colors.bg, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.fg},
    c = {bg = colors.darkgray, fg = colors.fg}
  },
  replace = {
    a = {bg = colors.red, fg = colors.bg, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.fg},
    c = {bg = colors.darkgray, fg = colors.fg}
  },
  command = {
    a = {bg = colors.red, fg = colors.bg, gui = 'bold'},
    b = {bg = colors.darkgray, fg = colors.fg},
    c = {bg = colors.darkgray, fg = colors.fg}
  },
  inactive = {
    a = {bg = colors.darkgray, fg = colors.fg, gui = 'italic'},
    b = {bg = colors.darkgray, fg = colors.fg},
    c = {bg = colors.darkgray, fg = colors.fg}
  }
}

require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = custom,
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
