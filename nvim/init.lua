vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.number = true
vim.opt.termguicolors = true

local gh = function(name) return "https://github.com/" .. name end

vim.pack.add({
    gh("folke/tokyonight.nvim"),
    gh("nvim-lualine/lualine.nvim")
})

vim.cmd.colorscheme("tokyonight-storm")

require("lualine").setup({
    options = {
		theme = "auto"
    }
})
