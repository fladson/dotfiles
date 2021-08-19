return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }
  use { "lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  -- use "lukas-reineke/indent-blankline.nvim"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-compe"
  use "nvim-treesitter/nvim-treesitter-textobjects"

  use "akinsho/nvim-bufferline.lua"
  use "kyazdani42/nvim-tree.lua"
  use "knubie/vim-kitty-navigator"
  use "kyazdani42/nvim-web-devicons"
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require'colorizer'.setup()
    end
  }
  use "vim-test/vim-test"
  use "hoob3rt/lualine.nvim"
  use "tpope/vim-commentary"
  use "tpope/vim-surround"
  use "rktjmp/lush.nvim"

  -- colorscheme
  use "fnune/base16-vim"

  -- git
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb" -- open file on github

  -- languages
  use "elixir-lang/vim-elixir"
  use "fladson/vim-kitty"
  use "tpope/vim-rails"
  use "vim-ruby/vim-ruby"
end)
