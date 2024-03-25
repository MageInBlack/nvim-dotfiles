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
  ["<C-j>"] = {"<cmd>wincmd j<cr>","Move to lower split"},
  ["<C-k>"] = {"<cmd>wincmd k<cr>","Move to upper split"},
  ["<C-l>"] = {"<cmd>wincmd l<cr>","Move to right split"},
  ["g"] = {
    name="+goto",
    l = {"<cmd>lua vim.diagnostic.open_float()<cr>","Open diagnostic hover"},
  }
})

-- lualine
require('lualine').setup()

-- telescope
require("telescope").load_extension("fzf")

-- lsp
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

vim.g.rustaceanvim = {
  server = {
    capabilities = lsp_zero.get_capabilities()
  },
}

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'rust_analyzer'},
  handlers = {
    lsp_zero.default_setup,
    rust_analyzer = lsp_zero.noop,
  },
})

-- toggleterm
require('toggleterm').setup{
  open_mapping = [[<c-\>]],
  direction = 'float',

}

-- completion cmp
local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format({details = true})

cmp.setup({
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  })
})
