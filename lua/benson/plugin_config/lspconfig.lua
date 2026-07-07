return {
    {
        'neovim/nvim-lspconfig',

        config = function()
<<<<<<< HEAD
=======
            
>>>>>>> a729710 (smallacera modernize and update completion)
            vim.lsp.config('clangd', {
                cmd = { "clangd", "--experimental-modules-support", "--completion-style=detailed", "--pch-storage=disk" },
            })

<<<<<<< HEAD
            vim.lsp.config('lua_ls', {
                on_init = function(client)
                    if client.workspace_folders then
                        local path = client.workspace_folders[1].name
                        if
                            path ~= vim.fn.stdpath('config')
                            and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
                        then
                            return
                        end
                    end

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (most
                            -- likely LuaJIT in the case of Neovim)
                            version = 'LuaJIT',
                            -- Tell the language server how to find Lua modules same way as Neovim
                            -- (see `:h lua-module-load`)
                            path = {
                                'lua/?.lua',
                                'lua/?/init.lua',
                            },
                        },
                        -- Make the server aware of Neovim runtime files
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTIME,
                                -- For LSP Settings Type Annotations: https://github.com/neovim/nvim-lspconfig#lsp-settings-type-annotations
                                vim.api.nvim_get_runtime_file("lua/lspconfig", false)[1],
                            },
                            -- Or pull in all of 'runtimepath'.
                            -- NOTE: this is a lot slower and will cause issues when working on
                            -- your own configuration.
                            -- See https://github.com/neovim/nvim-lspconfig/issues/3189
                            -- library = vim.api.nvim_get_runtime_file('', true),
                        },
                    })
                end,
                settings = {
                    Lua = {},
                },
            })

            vim.lsp.enable('clangd')
            vim.lsp.enable('qmlls')
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
                            group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
                            buffer = args.buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
                            end,
                        })
                    end

            vim.api.nvim_create_autocmd({ "BufWrite", "BufEnter", "InsertLeave" }, {
                group = lspgroup,
                callback = function()
                    vim.diagnostic.setloclist({ open = false })
                end
            })
                end,
            })
        end
    }
=======
        vim.lsp.config('lua_ls', {
                on_init = function(client)
                if client.workspace_folders then
                local path = client.workspace_folders[1].name
                if
                path ~= vim.fn.stdpath('config')
                and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
                then
                return
                end
                end

                client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                    runtime = {
                    -- Tell the language server which version of Lua you're using (most
                            -- likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                    -- Tell the language server how to find Lua modules same way as Neovim
                    -- (see `:h lua-module-load`)
                    path = {
                    'lua/?.lua',
                    'lua/?/init.lua',
                    },
                    },
                    -- Make the server aware of Neovim runtime files
                    workspace = {
                    checkThirdParty = false,
                    library = {
                    vim.env.VIMRUNTIME,
                    -- For LSP Settings Type Annotations: https://github.com/neovim/nvim-lspconfig#lsp-settings-type-annotations
                    vim.api.nvim_get_runtime_file("lua/lspconfig", false)[1],
                    },
                    -- Or pull in all of 'runtimepath'.
                        -- NOTE: this is a lot slower and will cause issues when working on
                        -- your own configuration.
                        -- See https://github.com/neovim/nvim-lspconfig/issues/3189
                        -- library = vim.api.nvim_get_runtime_file('', true),
                    },
                })
        end,
            settings = {
                Lua = {},
            },
    })

    vim.lsp.enable('clangd')
        vim.lsp.enable('qmlls')
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('ts_ls')
        vim.lsp.enable('cmake')
        vim.lsp.enable('csharp_ls')

        local lspgroup = vim.api.nvim_create_augroup("lspgroup", {clear = true})

        vim.api.nvim_create_autocmd({"BufWrite", "BufEnter", "InsertLeave"}, {
                group = lspgroup,
                callback = function()
                vim.diagnostic.setloclist({open = false})
                end
                })

        vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('my.lsp', {}),
                callback = function(args)
                local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

                -- Auto-format ("lint") on save.
                -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
                if not client:supports_method('textDocument/willSaveWaitUntil')
                and client:supports_method('textDocument/formatting') then
                vim.api.nvim_create_autocmd('BufWritePre', {
                        group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
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
>>>>>>> a729710 (smallacera modernize and update completion)
}
