return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require'colorizer'.setup()
    end
  }
  use "hoob3rt/lualine.nvim"
  use "akinsho/nvim-bufferline.lua"
  use "nvim-treesitter/nvim-treesitter-textobjects"
  use "nvim-treesitter/playground"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-compe"
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
  use "vim-test/vim-test"
  use "tpope/vim-commentary"
  use "tpope/vim-surround"
  use "knubie/vim-kitty-navigator"

  -- trying
  use "ddrscott/vim-side-search"
  use "wincent/ferret"
  use "rktjmp/lush.nvim"
  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  use({
    "catppuccin/nvim",
    as = "catppuccin"
  })
  -- use "lukas-reineke/indent-blankline.nvim"

  -- colorscheme
  -- use "fnune/base16-vim"
  use "amirrezaask/base16.nvim"
  use "nanotech/jellybeans.vim"

  -- git
  use "tpope/vim-fugitive"
  use "tpope/vim-rhubarb" -- open file on github
  use { "lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"}}

  -- languages
  use "elixir-lang/vim-elixir"
  use "fladson/vim-kitty"
  use "tpope/vim-rails"
  use "vim-ruby/vim-ruby"
end)
