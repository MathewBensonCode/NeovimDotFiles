local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   'navarasu/onedark.nvim',
     'tpope/vim-fugitive',
     { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim'} },
     { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
     {'nvim-treesitter/nvim-treesitter', config=function()
     vim.cmd('TSUpdate')
 end
 },
    {'nvim-telescope/telescope-dap.nvim'},
     'neovim/nvim-lspconfig',
     'nvim-lua/plenary.nvim',
     'nvim-lualine/lualine.nvim',
     'rose-pine/neovim',
    'mfussenegger/nvim-dap',
   })
