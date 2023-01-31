vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lualine/lualine.nvim'
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
end)
