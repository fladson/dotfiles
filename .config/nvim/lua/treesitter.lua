local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
  ensure_installed = {
    "ruby",
  },
  highlight = {
    enable = true
  }
}
