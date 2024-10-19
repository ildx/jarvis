-- [[ Options ]]
--  See `:help vim.opt`
--  For more options, see: `:help option-list`

-- Show line numbers
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true

-- Set tabs and indenting
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Use fat cursor
vim.opt.guicursor = ""

-- Show last status
vim.opt.laststatus = 3

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, it's already in status line
vim.opt.showmode = false

-- Use system clipboard
--  See `:help 'clipboard'`
vim.opt.clipboard = "unnamedplus"

-- Set some historical stuff
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vimhistory"

-- Case-insensitive searching unless \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Make vim blazingly fast
vim.opt.updatetime = 50
vim.opt.timeoutlen = 300
vim.opt.timeout = true

-- Set how splits behave
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = false
vim.opt.listchars = { tab = '> ', trail = '.', nbsp = '␣' }
vim.opt.fillchars = { eob = " " }

-- Preview substitutions as you type
vim.opt.inccommand = "split"

-- Minimum number of lines above and below the cursor
vim.opt.scrolloff = 25

-- Highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlight search" })

-- Set colors
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Set backspace
vim.opt.backspace = "indent,eol,start"

-- Backspaces are part of a string
vim.opt.iskeyword:append("-")

-- Disable the default intro
vim.opt.shortmess:append("sI")

-- Better line end navigation
--  Go to prev/next line when cursor reaches end or beginning of a line
vim.opt.whichwrap:append("<>[]hl")
