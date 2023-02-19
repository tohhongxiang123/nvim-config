vim.g.mapleader = " "

local keymap = vim.keymap
local status, wk = pcall(require, "which-key")
if not status then
	return
end

-- general keymaps
keymap.set("i", "jk", "<ESC>")

-- clear highlight (NoHighlight)
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- deleting a single character will not put it into register
keymap.set("n", "x", '"_x')

-- splitting windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make splits equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split

-- opening tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to prev tab

-- plugins keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximize/restore current split

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggles file tree

-- telescope
wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		s = { "<cmd>Telescope live_grep<cr>", "Find String" },
		c = { "<cmd>Telescope grep_string<cr>", "Find Current String" },
		b = { "<cmd>Telescope buffers<cr>", "Show Active Buffers" },
		h = { "<cmd>Telescope help_tags<cr>", "Show Help Tags" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false }, -- additional options for creating the keymap
	},
}, { prefix = "<leader>" })

-- markdown preview
keymap.set("n", "<leader>p", "<cmd>MarkdownPreview<cr>") -- toggle markdown preview
