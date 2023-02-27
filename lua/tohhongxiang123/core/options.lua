local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4 -- tab width
opt.shiftwidth = 4 -- size of indent
opt.expandtab = true -- tab inserts spaces instead of tab char
opt.autoindent = true

-- line wrap
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- cursorline
opt.cursorline = false -- show current cursor line

-- appearance
opt.termguicolors = true
opt.background = "dark" -- default to dark theme
opt.signcolumn = "auto" -- add column for signs

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.scrolloff = 16
