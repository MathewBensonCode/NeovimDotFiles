return {
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            require 'nvim-treesitter'.install { "c_sharp", "cpp", "javascript", "typescript", "c", "lua", "rust",
                "go", "cmake", "bash", "html", "toml", "yaml" }
        end
    }
}
