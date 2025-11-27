return{
    {
     'neovim/nvim-lspconfig',
     config = function(args)
         vim.lsp.config('clangd', {
             cmd = { "clangd", "--background-index", "--experimental-modules-support", "--completion-style=detailed" },
         })
         vim.lsp.config('ts_ls', {})
         vim.lsp.config('lua_ls', {})
         vim.lsp.config('cmake', {})
         vim.lsp.config('csharp_ls', {})

         vim.lsp.enable('clangd')
         vim.lsp.enable('lua_ls')
         vim.lsp.enable('ts_ls')
         vim.lsp.enable('cmake')
         vim.lsp.enable('csharp_ls')

    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('my.lsp', {}),
      callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

        -- Auto-format ("lint") on save.
        -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
        if not client:supports_method('textDocument/willSaveWaitUntil')
            and client:supports_method('textDocument/formatting') then
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = vim.api.nvim_create_augroup('my.lsp', {clear=false}),
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
            end,
          })
        end
      end,
    })
     end
    }
}
