-- which-key
local wk = require ("which-key")
wk.register({
	["<leader>"] = { 
		f = {
			name="+file",
			f = {"<cmd>Telescope find_files<cr>", "Find File"},
			e = {"<cmd>Ex<cr>", "File Explorer"},
			g = {"<cmd>Telescope git_files<cr>", "Find Files Git repo"}
		},
	},
})

-- lualine
require('lualine').setup()
