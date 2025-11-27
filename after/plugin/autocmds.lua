local lspgroup = vim.api.nvim_create_augroup("lspgroup", {clear = true})

vim.api.nvim_create_autocmd({"BufWrite", "BufEnter", "InsertLeave"}, {
    group = lspgroup,
    callback = function()
        vim.diagnostic.setloclist({open = false})
    end
})
