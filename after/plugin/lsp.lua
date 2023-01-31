local mapper = require("benson.keymap")
local custom_lsp_attach = function()
    -- Use LSP as the handler for omnifunc.
    --    See `:help omnifunc` and `:help ins-completion` for more information.
    vim.api.nvim_buf_set_option(0, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Use LSP as the handler for formatexpr.
    --    See `:help formatexpr` for more information.
    vim.api.nvim_buf_set_option(0, 'formatexpr', 'v:lua.vim.lsp.formatexpr()')

    -- For plugins with an `on_attach` callback, call them here. For example:
    -- require('completion').on_attach()

    mapper.nnoremap("gd", ":lua vim.lsp.buf.definition()<CR>")
    mapper.nnoremap("K", ":lua vim.lsp.buf.hover()<CR>")
    mapper.nnoremap("gD", ":lua vim.lsp.buf.implementation()<CR>")
    mapper.nnoremap("<c-k>", ":lua vim.lsp.buf.signature_help()<CR>")
    mapper.nnoremap("1gD", ":lua vim.lsp.buf.type_definition()<CR>")
    mapper.nnoremap("gr", ":lua vim.lsp.buf.references()<CR>")
    mapper.nnoremap("g0", ":lua vim.lsp.buf.document_symbol()<CR>")
    mapper.nnoremap("gW", ":lua vim.lsp.buf.workspace_symbol()<CR>")
    mapper.nnoremap("<Leader>gd", ":lua vim.lsp.buf.declaration()<CR>")
    mapper.nnoremap("<Leader>rn", ":lua vim.lsp.buf.rename()<CR>")
    mapper.nnoremap("<Leader>ca", ":lua vim.lsp.buf.code_action()<CR>")
    mapper.nnoremap("<Leader>cf", ":lua vim.lsp.buf.format( { async = true} )<CR>")
end

local nvim_lsp = require('lspconfig')

nvim_lsp.clangd.setup({
    cmd = { "clangd", "--completion-style=detailed", "--clang-tidy" },
    on_attach = custom_lsp_attach
})

nvim_lsp.cmake.setup({
    on_attach = custom_lsp_attach
})

nvim_lsp.rls.setup({
    settings = {
        rust = {
            unstable_features = true,
            build_on_save = false,
            all_features = true,
        },
    },
    on_attach = custom_lsp_attach
})

nvim_lsp.tsserver.setup({
    on_attach = custom_lsp_attach
})

nvim_lsp.graphql.setup({
    on_attach = custom_lsp_attach
})

nvim_lsp.java_language_server.setup {
    on_attach = custom_lsp_attach
}

nvim_lsp.omnisharp.setup {
    cmd = { "dotnet", "C:/Users/benson/software/omnisharp/Omnisharp.dll" },

    -- Enables support for reading code style, naming convention and analyzer
    -- settings from .editorconfig.
    enable_editorconfig_support = true,

    -- If true, MSBuild project system will only load projects for files that
    -- were opened in the editor. This setting is useful for big C# codebases
    -- and allows for faster initialization of code navigation features only
    -- for projects that are relevant to code that is being edited. With this
    -- setting enabled OmniSharp may load fewer projects and may thus display
    -- incomplete reference lists for symbols.
    enable_ms_build_load_projects_on_demand = false,

    -- Enables support for roslyn analyzers, code fixes and rulesets.
    enable_roslyn_analyzers = true,

    -- Specifies whether 'using' directives should be grouped and sorted during
    -- document formatting.
    organize_imports_on_format = true,

    -- Enables support for showing unimported types and unimported extension
    -- methods in completion lists. When committed, the appropriate using
    -- directive will be added at the top of the current file. This option can
    -- have a negative impact on initial completion responsiveness,
    -- particularly for the first few completion sessions after opening a
    -- solution.
    enable_import_completion = true,

    -- Specifies whether to include preview versions of the .NET SDK when
    -- determining which version to use for project loading.
    sdk_include_prereleases = false,

    -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
    -- true
    analyze_open_documents_only = false,

    on_attach = custom_lsp_attach,
}


-- An example of configuring for `sumneko_lua`,
--  a language server for Lua.

-- set the path to the sumneko installation
--  local system_name = "Linux" -- (Linux, macOS, or Windows)
local sumneko_root_path = 'C:/Users/benson/software/lua-language-server'
local sumneko_binary = sumneko_root_path .. "/bin" .. "/lua-language-server"

nvim_lsp.sumneko_lua.setup({
    cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" };
    -- An example of settings for an LSP server.
    --    For more options, see nvim-lspconfig
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        }
    },

    on_attach = custom_lsp_attach
}
)

nvim_lsp.gopls.setup {
    on_attach = custom_lsp_attach,
}
