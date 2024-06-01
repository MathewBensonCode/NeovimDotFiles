local mapper = require("benson.keymap")
-- Map alt-v in command-line mode to replace the commandline
-- with the Ex command-line beneath the cursor in the buffer
-- mapper.cnoremap("<Esc>v", "<C-\>esubstitute(getline(\'.\'), \'^\s*\(\' . escape(substitute(&commentstring, '%s.*$', '', ''), '*') . '\)*\s*:*' , '', '')<CR>")
--
-- Go to NetRW file explorer
mapper.nnoremap("<C-p>", ":Ex<CR>")

-- Use <C-L> to clear search highlighting as well as refresh the screen
mapper.nnoremap("<C-l>", ":nohlsearch <bar> redraw<CR>")
mapper.inoremap("<C-l>", "<C-O>:nohlsearch <bar> redraw<CR>")

--show diagnostics in a float
mapper.nnoremap("<Leader>ds",   ":lua vim.diagnostic.open_float()<CR>")

--make
mapper.nnoremap("<Leader>m", ":make<CR>")

--Telescope mappings
mapper.nnoremap("<Leader>fc", ":Telescope find_files cwd=~/.config/nvim<CR>")
mapper.nnoremap("<Leader>fb", ":Telescope buffers<CR>")
mapper.nnoremap("<Leader>ff", ":Telescope find_files<CR>")

--Terminal mappings
mapper.tnoremap("<Esc>", "<C-bSlash><C-N>")
