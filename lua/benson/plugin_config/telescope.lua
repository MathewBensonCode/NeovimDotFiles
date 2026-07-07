return{
     { 'nvim-telescope/telescope.nvim', 
       tag = '0.1.5', 
       dependencies = { 
            {'nvim-lua/plenary.nvim'},
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            {'nvim-telescope/telescope-dap.nvim'},
            {'nvim-lua/plenary.nvim'},
        config = function()

            local mytelescope = require('telescope')

            mytelescope.setup()

            -- To get fzf loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            mytelescope.load_extension('fzf')
            mytelescope.load_extension('dap')
        end
      } 
     },
}
