-- which-key
local wk = require ("which-key")
wk.register({
	["<leader>"] = { 
		f = {
			name="+file",
			f = {"<cmd>Telescope find_files<cr>", "Find File"},
			e = {"<cmd>Neotree toggle<cr>", "File Tree Explorer"},
			g = {"<cmd>Telescope git_files<cr>", "Find Files Git repo"}
		},
	},
  ["<C-h>"] = {"<cmd>wincmd h<cr>","Move to left split"},
  ["<C-h>"] = {"<cmd>wincmd j<cr>","Move to lower split"},
  ["<C-h>"] = {"<cmd>wincmd k<cr>","Move to upper split"},
  ["<C-h>"] = {"<cmd>wincmd h<cr>","Move to right split"},
})

-- lualine
require('lualine').setup()

-- telescope
require("telescope").load_extension("fzf")
