local lspgroup = vim.api.nvim_create_augroup("lspgroup", {clear = true})

--vim.api.nvim_create_autocmd("BufWritePre", {
--     group = lspgroup,
--     pattern = {"*.c*", "*.h*"},
--   callback = function()
--       vim.lsp.buf.format()
--     end
-- })

vim.api.nvim_create_autocmd({"BufWrite", "BufEnter", "InsertLeave"}, {
    group = lspgroup,
    callback = function()
        vim.diagnostic.setloclist({open = false})
    end
})
