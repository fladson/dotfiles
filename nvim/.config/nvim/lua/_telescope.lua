require("telescope").setup {
  defaults = {
    generic_sorter =  require'telescope.sorters'.get_fzy_sorter,
    file_sorter =  require'telescope.sorters'.get_fzy_sorter,
    mappings = {
      i = {
        ['<esc>'] = require('telescope.actions').close,
      }
    },
  }
}
