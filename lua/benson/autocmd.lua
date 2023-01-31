local mygroup = vim.api.nvim_create_augroup("mygroup", {clear = false})
vim.api.nvim_create_autocmd("BufEnter", {pattern = "*.cs", command = 'compiler msbuild | set makeprg=dotnet\\ build', group = mygroup})
