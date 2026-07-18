return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            vim.api.nvim_create_autocmd('FileType', {
                pattern = { 'cpp', 'c', 'cmake', 'markdown', 'html', 'toml', 'yaml', 'lua', 'go', 'rust' },
                callback = function() vim.treesitter.start() end,
            })
        end
    }
}
