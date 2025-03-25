local colorscheme = 'vscode'
-- local colorscheme = 'codedark'
-- local colorscheme = 'vscode2'
-- local colorscheme = 'aurora'
-- local colorscheme = 'tokyonight'

if colorscheme == 'vscode' then
    return {
        "Mofiqul/vscode.nvim",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme vscode]])
        end,
    }
elseif colorscheme == 'codedark' then
    return {
        "tomasiser/vim-code-dark",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme codedark]])
        end,
    }
elseif colorscheme == 'vscode2' then
    return {
        "gmr458/vscode_modern_theme.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vscode_modern").setup({
                cursorline = true,
                transparent_background = false,
                nvim_tree_darker = true,
            })
            vim.cmd.colorscheme("vscode_modern")
        end,
    }
elseif colorscheme == 'aurora' then
    return {
        "ray-x/aurora",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme aurora]])
        end,
    }
else
    return {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                style = "night",
            })
            vim.cmd([[colorscheme tokyonight]])
        end,
    }
end
