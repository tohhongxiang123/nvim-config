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
wk.register({
	s = {
		name = "split",
		v = { "<C-w>v", "vertical" },
		h = { "<C-w>s", "horizontal" },
		e = { "<C-w>=", "equally" },
		m = { ":MaximizerToggle<CR>", "maximize/minimize" },
		x = { "<cmd>close<CR>", "close" },
	},
}, { prefix = "<leader>" })

-- opening tabs
wk.register({
	t = {
		name = "tab",
		o = { "<cmd>tabnew<CR>", "new" },
		x = { "<cmd>tabclose<CR>", "close" },
		n = { "<cmd>tabn<CR>", "next" },
		p = { "<cmd>tabp<CR>", "previous" },
	},
}, { prefix = "<leader>" })

-- plugins keymaps

-- nvim-tree
wk.register({
	e = { ":NvimTreeToggle<CR>", "Show file tree" },
}, { prefix = "<leader>" })
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggles file tree

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

-- undo tree
wk.register({
	u = { "<cmd>UndotreeToggle<CR>", "Toggle UndoTree" },
}, { prefix = "<leader>" })

-- markdown preview
wk.register({
	p = { "<cmd>MarkdownPreview<CR>", "Preview Markdown" },
}, { prefix = "<leader>" })
