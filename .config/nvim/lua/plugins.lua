return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }
  use {
    "lewis6991/gitsigns.nvim",
    requires = {"nvim-lua/plenary.nvim"},
    config = function()
      require("gitsigns").setup()
    end
  }
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-compe"
  use "nvim-treesitter/nvim-treesitter"
  use "akinsho/nvim-bufferline.lua"
  use "kyazdani42/nvim-tree.lua"
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb" -- open file on github
  use "fnune/base16-vim"
end)
