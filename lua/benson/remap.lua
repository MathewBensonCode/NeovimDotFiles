-- Use <C-L> to clear search highlighting as well as refresh the screen
vim.keymap.set("n", "<C-l>", ":nohlsearch <bar> redraw<CR>")
vim.keymap.set("i", "<C-l>", "<C-O>:nohlsearch <bar> redraw<CR>")

--show diagnostics in a float
vim.keymap.set('n', '<Leader>ds', vim.diagnostic.open_float)

--make
vim.keymap.set("n", "<Leader>m", ":make<CR>")

--Terminal mappings
vim.keymap.set("t", "<Esc><Esc>", "<C-bSlash><C-N>")
