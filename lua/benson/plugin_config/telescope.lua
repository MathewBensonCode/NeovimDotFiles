return {
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
            { 'nvim-telescope/telescope-dap.nvim' },
<<<<<<< HEAD
=======
            { 'nvim-lua/plenary.nvim' },
>>>>>>> a729710 (smallacera modernize and update completion)
        },

        config = function()
            local mytelescope = require('telescope')

            mytelescope.setup()

            -- To get fzf loaded and working with telescope, you need to call
            -- load_extension, somewhere after setup function:
            mytelescope.load_extension('fzf')
            mytelescope.load_extension('dap')

            local builtin = require('telescope.builtin')

<<<<<<< HEAD
            vim.keymap.set('n', '<leader>fc', function()
                    builtin.find_files({ cwd = vim.fn.stdpath("config") })
                end,
                { desc = 'Telescope find config files' })
            vim.keymap.set('n', '<leader>fp', function()
                    builtin.find_files({ cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy") })
                end,
                { desc = 'Telescope find package files' })
=======
            vim.keymap.set('n', '<leader>fc', 'builtin.find_files({ cwd =/home/benson/.config/nvim })',
                { desc = 'Telescope find config files' })
>>>>>>> a729710 (smallacera modernize and update completion)
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope Find Buffers' })
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope Find Files' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope Find Help' })
        end
    },
}
