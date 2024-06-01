-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
local mytelescope = require('telescope')

mytelescope.setup()

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
mytelescope.load_extension('fzf')
mytelescope.load_extension('dap')
