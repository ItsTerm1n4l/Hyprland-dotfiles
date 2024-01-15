local lazy_plugins = {
	{"windwp/nvim-autopairs"},
	{"ItsTerm1n4l/spice.nvim"},
	{"nvim-lualine/lualine.nvim"},
	{"nvim-treesitter/nvim-treesitter"},
	{"lukas-reineke/indent-blankline.nvim", main = "ibl"},
	{"windwp/nvim-ts-autotag"},
	{"neoclide/coc.nvim", event = "VeryLazy" },
	{"norcalli/nvim-colorizer.lua"},
--	{"rodrigore/coc-tailwind-intellisense"},
--	{"neovim/nvim-lspconfig"},
	{"leafOfTree/vim-matchtag"},
	{"https://github.com/derektata/lorem.nvim.git"},
--    {"hrsh7th/cmp-nvim-lsp"},
--    {"hrsh7th/cmp-buffer"},
--    {"hrsh7th/cmp-path"},
--    {"hrsh7th/cmp-cmdline"}, 
--    {"hrsh7th/nvim-cmp"},
--    {"roobert/tailwindcss-colorizer-cmp.nvim"},
}

local opts = {
  root = vim.fn.stdpath("config") .. "/plugins", -- directory where plugins will be installed
}
require("lazy").setup(lazy_plugins, opts)
