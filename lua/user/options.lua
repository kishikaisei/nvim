local options = {
  fileencoding = "utf-8",                  -- the encoding written to a file
  -- autochdir = true,                        -- Automatically CD to file folder
  -- lazyredraw = true,                       -- Better scrolling performance on large results

  guifont = "monospace:h6",               -- the font used in graphical neovim applications
  -- background = "dark",                     -- Set background to be dark
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  hlsearch = true,                         -- highlight all matches on previous search pattern

  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  conceallevel = 0,                        -- so that `` is visible in markdown files
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  -- virtualedit = 'block',                   -- In visual, can select beyond EOL

  cursorline = true,                       -- highlight the current line
  wrap = true,                             -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines

  -- list = true,                             -- Enable showing invisble charachters
  -- listchars = 'tab: ,trail:·,space:·,eol:,nbsp:⣿', -- Show invisible characters with the specified symbnls

  numberwidth = 4,                         -- set number column width to 2 {default 4}
  showtabline = 2,                         -- always show tabs
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  ignorecase = true,                       -- ignore case in search patterns
  wildignorecase = true,
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  -- termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`

  backup = false,                          -- creates a backup file
  -- backupdir = '',
  swapfile = false,                        -- creates a swapfile
  -- set.directory = '',
  undofile = true,                         -- enable persistent undo
  -- set.undodir = '',
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- -- Folding methods
-- vim.wo.foldmethod      = 'expr'
-- vim.wo.foldexpr        = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldlevelstart = 99
