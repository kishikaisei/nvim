local packer = require "user.packerInit"
return packer.startup(function(use)
  -- Dependencies --
  ------------------
  use { "wbthomason/packer.nvim" } -- Have packer manage itself
  use { "nvim-lua/plenary.nvim" } -- Useful lua functions used by lots of plugins
  use { "nvim-lua/popup.nvim" } -- An implementation of the Popup API  from vim in Neovim
  use { "MunifTanjim/nui.nvim" } -- UI Component Library
  use { "tjdevries/colorbuddy.nvim" } -- Colourscheme helper
  use { "nvim-tree/nvim-web-devicons" } -- Extra icons

  --  Aesthetics --
  -------------------
  use { "akinsho/bufferline.nvim" } -- Buffer tabs
  use { "nvim-lualine/lualine.nvim" } -- Status line
  use { "lukas-reineke/indent-blankline.nvim" } -- Indent lines
  use { "goolord/alpha-nvim" } -- Starting dashboard
  use { "lewis6991/impatient.nvim" } -- Speed-up loading plugins
  -- use { "norcalli/nvim-colorizer.lua" } -- Visualise colour codes
  use { "folke/todo-comments.nvim" } -- Show to do list in qf
  use { "RRethy/vim-illuminate" } -- Highlight current word
  use { "gelguy/wilder.nvim" }
  use { "petertriho/nvim-scrollbar" }
  use { "tiagovla/scope.nvim" } -- Only show buffers if current tab
  use { "folke/trouble.nvim" } -- Show lsp errors in qf
  use { "folke/noice.nvim" } -- Noice notifications

  --  Tools --
  --------------
  use { "windwp/nvim-autopairs" } -- Autopairs, integrates with both cmp and treesitter
  use { "JoosepAlviste/nvim-ts-context-commentstring" } -- Comment out code using TS
  use { "numToStr/Comment.nvim" } -- Easily comment stuff
  use { "nvim-tree/nvim-tree.lua" } -- File explorer
  use { "moll/vim-bbye" } -- Better closing of buffers
  use { "akinsho/toggleterm.nvim" } -- Terminal runner
  use { "ahmedkhalf/project.nvim" } -- Projects list based on VCS
  use { "folke/which-key.nvim" } -- Emacs style whichkey
  use { "zbirenbaum/copilot.lua" } -- Githubs AI code completion
  use { "andymass/vim-matchup" } -- Better % movement
  use { "habamax/vim-godot" } -- Godt syntax and scene runner
  use { "rhysd/clever-f.vim" } -- Better F
  use { "simnalamburt/vim-mundo" } -- Visualise the undotree
  use { "jghauser/mkdir.nvim" } -- Create directories

  -- ⚙ Code help --
  -----------------
  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},

      -- Misc
      {'j-hui/fidget.nvim'},
      {'onsails/lspkind.nvim'}
    }
  }
  -- use { "zbirenbaum/copilot-cmp", module = "copilot_cmp" } -- Github Copilot CMP
  use { "jose-elias-alvarez/null-ls.nvim" } -- For formatters and linters

  --  Telescope --
  ------------------
  use { "nvim-telescope/telescope.nvim" }
  -- use {"ahmedkhalf/project.nvim"} -- Projects list based on VCS
  -- use {"nvim-telescope/telescope-frecency.nvim"} -- Get results based on weight
  -- use {"nvim-telescope/telescope-ui-select.nvim"} -- Exposes telescope select
  -- use {"nvim-telescope/telescope-fzy-native.nvim"} -- FZY sorter

  -- 侮 Treesitter --
  ------------------
  use { "nvim-treesitter/nvim-treesitter" } -- Better syntax detection
  -- use {"romgrk/nvim-treesitter-context"} -- Better code detection
  -- use {"JoosepAlviste/nvim-ts-context-commentstring"} -- Comment out code using TS

  --  Git --
  -----------
  use { "lewis6991/gitsigns.nvim" }
  -- use {"f-person/git-blame.nvim"}

  --  Colorschemes --
  --------------------
  use { "folke/tokyonight.nvim" }
  use { "shaunsingh/nord.nvim" }
  use { "lunarvim/darkplus.nvim" }
  use { "EdenEast/nightfox.nvim" }
  use { "rebelot/kanagawa.nvim" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
