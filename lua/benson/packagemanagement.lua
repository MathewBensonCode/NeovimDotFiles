local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
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
     'mfussenegger/nvim-lint',
     {'michaelrommel/nvim-silicon', lazy=true, cmd="Silicon" },
   })
