vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
    use 'navarasu/onedark.nvim'
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-fugitive'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lualine/lualine.nvim'
end)
