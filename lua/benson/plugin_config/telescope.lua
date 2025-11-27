return{
     { 'nvim-telescope/telescope.nvim', 
       tag = '0.1.5', 
       dependencies = { 
            {'nvim-lua/plenary.nvim'},
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            {'nvim-telescope/telescope-dap.nvim'},
            {'nvim-lua/plenary.nvim'},
      } 
     },
}
