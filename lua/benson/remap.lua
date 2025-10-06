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
mapper.nnoremap("<Leader>ds", ":lua vim.diagnostic.open_float()<CR>")

--make
mapper.nnoremap("<Leader>m", ":make<CR>")

--Telescope mappings
mapper.nnoremap("<Leader>fc", ":Telescope find_files cwd=~/.config/nvim<CR>")
mapper.nnoremap("<Leader>fb", ":Telescope buffers<CR>")
mapper.nnoremap("<Leader>ff", ":Telescope find_files<CR>")

--Terminal mappings
mapper.tnoremap("<Esc>", "<C-bSlash><C-N>")

--Lsp mappings
--mapper.nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
--mapper.nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
--mapper.nnoremap("gD", ":lua vim.lsp.buf.implementation()<CR>")
--mapper.nnoremap("<c-k>", ":lua vim.lsp.buf.signature_help()<CR>")
--mapper.nnoremap("1gD", ":lua vim.lsp.buf.type_definition()<CR>")
--mapper.nnoremap("gr", ":lua vim.lsp.buf.references()<CR>")
--mapper.nnoremap("g0", ":lua vim.lsp.buf.document_symbol()<CR>")
--mapper.nnoremap("gW", ":lua vim.lsp.buf.workspace_symbol()<CR>")
--mapper.nnoremap("<Leader>gd", ":lua vim.lsp.buf.declaration()<CR>")
--mapper.nnoremap("<Leader>rn", ":lua vim.lsp.buf.rename()<CR>")
--mapper.nnoremap("<Leader>ca", ":lua vim.lsp.buf.code_action()<CR>")
--mapper.nnoremap("<Leader>cf", ":lua vim.lsp.buf.format( { async = true} )<CR>")


-- locationlist mapping
--mapper.nnoremap("<Leader>o", ":lopen<CR>")
--mapper.nnoremap("<Leader>]", ":lnext<CR>")
--mapper.nnoremap("<Leader>[", ":lprev<CR>")
--
---- QuickFixlist mapping
--mapper.nnoremap("<C-T>", ":copen<CR>")
--mapper.nnoremap("<C-H>", ":cclose<CR>")
--mapper.nnoremap("<C-]>", ":cnext<CR>")
--mapper.nnoremap("<C-[>", ":cprev<CR>")
