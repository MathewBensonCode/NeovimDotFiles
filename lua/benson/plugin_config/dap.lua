return {
    {
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require("dap")

            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = { "-i", "dap" }
            }

            dap.configurations.cpp = {
                {
                    name = "Launch",
                    type = "gdb",
                    request = "launch",
                    program = "${command:pickFile}",
                    cwd = "${workspaceFolder}/day1",
                    stopAtBeginningOfMainSubprogram = false,
                },
            }
        end
    }
}
