require("bufferline").setup {
  options = {
    view = "multiwindow",
    show_close_icon = false,
    show_buffer_close_icons = false,
    diagnostics = false, -- no lsp diagnostics on bufferline
    always_show_bufferline = false,
    indicator_icon = ' ',
    separator_style = { '', '' },
  },
}
