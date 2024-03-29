require("core.mappings")

require("core.lazy")

-- Set line numbers
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.wo.number = true
vim.wo.relativenumber = true

-- Tabs
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true
